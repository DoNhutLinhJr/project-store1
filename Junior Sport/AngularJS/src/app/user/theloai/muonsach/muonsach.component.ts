import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { ActivatedRoute } from '@angular/router';
import { ApiService } from '../../../services/api.service';

@Component({
  selector: 'app-muonsach',
  templateUrl: './muonsach.component.html',
  styleUrls: ['./muonsach.component.css'],
})
export class MuonsachComponent implements OnInit {
  borrowForm: FormGroup;
  bookDetails: any = null;
  userData: any = null; 
  isLoading: boolean = true; 

  constructor(
    private fb: FormBuilder,
    private route: ActivatedRoute,
    private apiService: ApiService
  ) {
    this.borrowForm = this.fb.group({});
  }

  ngOnInit(): void {
    const bookId = this.route.snapshot.paramMap.get('id'); 
    if (bookId) {
      this.fetchBookDetails(bookId);
    }
    this.userData = JSON.parse(localStorage.getItem('user') || '{}'); 
  }

  
  fetchBookDetails(bookId: string): void {
    this.apiService.get(`books/${bookId}`).subscribe(
      (response: any) => {
        this.bookDetails = response;
        this.isLoading = false; 
      },
      (error) => {
        console.error('Error fetching book details:', error);
        alert('Không thể tải thông tin giày.');
        this.isLoading = false;
      }
    );
  }

  onSubmit(): void {
    
  
    const payload = {
      userId: this.userData?.id,
      bookId: this.bookDetails?.id,
    };
  
    this.apiService.post('loans', payload).subscribe(
      (response) => {
        alert('Đọc sách thành công!');
        this.fetchBookDetails(this.bookDetails.id);
      },
      (error) => {
        console.error('Error creating loan:', error);
        alert('Đã xảy ra lỗi khi đọc .');
      }
    );
  }
  
  }

