.class Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;
.super Landroid/os/AsyncTask;
.source "ImageViewDrawableSetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/util/ImageViewDrawableSetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/widget/ImageView;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile mAvatarHolder:Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;

.field private final mContactData:Lcom/android/contacts/common/model/Contact;

.field private volatile mTargetHolder:Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/model/Contact;)V
    .locals 0
    .param p1, "contactData"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 110
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;->mContactData:Lcom/android/contacts/common/model/Contact;

    .line 110
    return-void
.end method

.method private decodedBitmapDrawable(Landroid/content/res/Resources;[B)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "compressed"    # [B

    .prologue
    .line 167
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 168
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private getDefaultDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactId"    # J

    .prologue
    .line 163
    invoke-static {p1}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/contacts/photomanager/ContactPhotoManager;->generateQuickContactPhoto(J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultDrawable(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lookupUri"    # Landroid/net/Uri;

    .prologue
    .line 156
    invoke-static {p1}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/contacts/photomanager/ContactPhotoManager;->generateQuickContactPhoto(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 115
    check-cast p1, [Landroid/widget/ImageView;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;->doInBackground([Landroid/widget/ImageView;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/widget/ImageView;)Ljava/lang/Void;
    .locals 14
    .param p1, "params"    # [Landroid/widget/ImageView;

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 116
    aget-object v7, p1, v11

    .line 117
    .local v7, "target":Landroid/widget/ImageView;
    const/4 v8, 0x1

    aget-object v0, p1, v8

    .line 119
    .local v0, "avatar":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 120
    .local v3, "context":Landroid/content/Context;
    iget-object v8, p0, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v8}, Lcom/android/contacts/common/model/Contact;->getPhotoBinaryData()[B

    move-result-object v2

    .line 121
    .local v2, "compressed":[B
    if-nez v2, :cond_1

    .line 122
    iget-object v8, p0, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v8}, Lcom/android/contacts/common/model/Contact;->getDirectoryId()J

    move-result-wide v8

    cmp-long v8, v8, v12

    if-nez v8, :cond_0

    .line 123
    iget-object v8, p0, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v8}, Lcom/android/contacts/common/model/Contact;->getId()J

    move-result-wide v8

    invoke-direct {p0, v3, v8, v9}, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;->getDefaultDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 130
    .local v6, "newDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v8, p0, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v8}, Lcom/android/contacts/common/model/Contact;->hasHighResPhoto()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 131
    new-instance v8, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;

    invoke-direct {v8, v7, v6}, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iput-object v8, p0, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;->mTargetHolder:Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;

    .line 132
    new-instance v8, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;

    invoke-direct {v8, v0, v10}, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iput-object v8, p0, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;->mAvatarHolder:Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;

    .line 152
    :goto_1
    return-object v10

    .line 125
    .end local v6    # "newDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v8, p0, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v8}, Lcom/android/contacts/common/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v8

    invoke-direct {p0, v3, v8}, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;->getDefaultDrawable(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .restart local v6    # "newDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 128
    .end local v6    # "newDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {p0, v8, v2}, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;->decodedBitmapDrawable(Landroid/content/res/Resources;[B)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    .restart local v6    # "newDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 133
    :cond_2
    iget-object v8, p0, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v8}, Lcom/android/contacts/common/model/Contact;->getPhotoId()J

    move-result-wide v8

    cmp-long v8, v8, v12

    if-lez v8, :cond_4

    .line 134
    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isGawEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 137
    iget-object v8, p0, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;->mContactData:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v8}, Lcom/android/contacts/common/model/Contact;->getId()J

    move-result-wide v8

    .line 136
    invoke-direct {p0, v3, v8, v9}, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;->getDefaultDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 138
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v8, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;

    invoke-direct {v8, v7, v5}, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iput-object v8, p0, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;->mTargetHolder:Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;

    .line 143
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_2
    array-length v8, v2

    invoke-static {v2, v11, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 144
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 145
    invoke-static {v3, v1}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->createRoundedBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 144
    invoke-direct {v4, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 146
    .local v4, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v8, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;

    invoke-direct {v8, v0, v4}, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iput-object v8, p0, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;->mAvatarHolder:Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;

    goto :goto_1

    .line 140
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_3
    new-instance v8, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;

    invoke-direct {v8, v7, v10}, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iput-object v8, p0, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;->mTargetHolder:Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;

    goto :goto_2

    .line 148
    :cond_4
    new-instance v8, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;

    invoke-direct {v8, v7, v6}, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iput-object v8, p0, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;->mTargetHolder:Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;

    .line 149
    new-instance v8, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;

    invoke-direct {v8, v0, v10}, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    iput-object v8, p0, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;->mAvatarHolder:Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 172
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;->mTargetHolder:Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;->mTargetHolder:Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;

    invoke-virtual {v0}, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;->applyDrawableAndSetVisibility()V

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;->mAvatarHolder:Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader;->mAvatarHolder:Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;

    invoke-virtual {v0}, Lcom/android/contacts/util/ImageViewDrawableSetter$ImageLoader$PhotoHolder;->applyDrawableAndSetVisibility()V

    .line 182
    :cond_2
    invoke-static {}, Lcom/android/contacts/util/ImageViewDrawableSetter;->-get0()Lcom/android/contacts/util/ImageViewDrawableSetter$CallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/contacts/util/ImageViewDrawableSetter$CallBack;->onFinish()V

    .line 172
    return-void
.end method
