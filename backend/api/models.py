from django.db import models

# Create your models here.
class Tweet(models.Model):
    content = models.TextField(max_length=300)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.content[:50]