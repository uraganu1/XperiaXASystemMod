.class public Lcom/android/contacts/util/ImageViewDrawableSetter;
.super Ljava/lang/Object;
.source "ImageViewDrawableSetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/ImageViewDrawableSetter$CallBack;,
        Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;
    }
.end annotation


# static fields
.field private static mCallBack:Lcom/android/contacts/util/ImageViewDrawableSetter$CallBack;


# instance fields
.field private mCompressed:[B

.field private mImageLoader:Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;


# direct methods
.method static synthetic -get0()Lcom/android/contacts/util/ImageViewDrawableSetter$CallBack;
    .locals 1

    sget-object v0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mCallBack:Lcom/android/contacts/util/ImageViewDrawableSetter$CallBack;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setContactImage(Lcom/android/contacts/common/model/Contact;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "contactData"    # Lcom/android/contacts/common/model/Contact;
    .param p2, "photoView"    # Landroid/widget/ImageView;
    .param p3, "avatar"    # Landroid/widget/ImageView;

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getPhotoBinaryData()[B

    move-result-object v0

    .line 71
    .local v0, "compressed":[B
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 76
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isGawEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mCompressed:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mCompressed:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    return-void

    .line 86
    :cond_0
    iput-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mCompressed:[B

    .line 87
    new-instance v2, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;

    invoke-direct {v2, p1}, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;-><init>(Lcom/android/contacts/common/model/Contact;)V

    iput-object v2, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mImageLoader:Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;

    .line 88
    iget-object v2, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mImageLoader:Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/widget/ImageView;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    return-void
.end method


# virtual methods
.method public cancelImageLoadingIfNeeded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mImageLoader:Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mImageLoader:Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;

    invoke-virtual {v0}, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mImageLoader:Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;->cancel(Z)Z

    .line 98
    iput-object v2, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mImageLoader:Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;

    .line 95
    :cond_0
    return-void
.end method

.method protected getCompressedImage()[B
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mCompressed:[B

    return-object v0
.end method

.method public setupContactPhoto(Lcom/android/contacts/common/model/Contact;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/contacts/util/ImageViewDrawableSetter$CallBack;)V
    .locals 0
    .param p1, "contactData"    # Lcom/android/contacts/common/model/Contact;
    .param p2, "photoView"    # Landroid/widget/ImageView;
    .param p3, "avatar"    # Landroid/widget/ImageView;
    .param p4, "callBack"    # Lcom/android/contacts/util/ImageViewDrawableSetter$CallBack;

    .prologue
    .line 60
    sput-object p4, Lcom/android/contacts/util/ImageViewDrawableSetter;->mCallBack:Lcom/android/contacts/util/ImageViewDrawableSetter$CallBack;

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setContactImage(Lcom/android/contacts/common/model/Contact;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 59
    return-void
.end method
