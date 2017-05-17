.class public interface abstract Lcom/sonymobile/jms/contact/ImContactApi;
.super Ljava/lang/Object;
.source "ImContactApi.java"


# virtual methods
.method public abstract createImContactNumber(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;
.end method

.method public abstract getImContactDisplayName(Lcom/sonymobile/jms/contact/ImContactNumber;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/contact/ImContactNotFoundException;
        }
    .end annotation
.end method

.method public abstract getImContactPhoto(Lcom/sonymobile/jms/contact/ImContactNumber;II)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/contact/ImContactNotFoundException;,
            Lcom/sonymobile/jms/contact/UnableToGetImContactPhotoException;
        }
    .end annotation
.end method

.method public abstract isImContact(Lcom/sonymobile/jms/contact/ImContactNumber;)Z
.end method

.method public abstract isMe(Lcom/sonymobile/jms/contact/ImContactNumber;)Z
.end method

.method public abstract isValidUriOrNumber(Ljava/lang/String;)Z
.end method
