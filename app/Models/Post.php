<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Post extends Model
{
	use HasFactory;

	protected $fillable = [
		'title', 'content', 'published'
	];

	public function user()
	{
		return $this->belongsTo(User::class);
	}

	public function comments()
	{
		return $this->hasMany(Comment::class);
	}

	public function scopeFilter($query)
	{
		return $query->when(auth()->guest() ?? false, function ($q) {
			$q->where("published", true);
		});
	}
}
