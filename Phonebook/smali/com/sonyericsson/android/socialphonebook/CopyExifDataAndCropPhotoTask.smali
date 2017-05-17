.class public Lcom/sonyericsson/android/socialphonebook/CopyExifDataAndCropPhotoTask;
.super Landroid/os/AsyncTask;
.source "CopyExifDataAndCropPhotoTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCropActivityRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/sonyericsson/android/socialphonebook/CopyExifDataAndCropPhotoTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/CopyExifDataAndCropPhotoTask;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cropRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/CopyExifDataAndCropPhotoTask;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/CopyExifDataAndCropPhotoTask;->mCropActivityRunnable:Ljava/lang/Runnable;

    .line 31
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .param p1, "uri"    # [Landroid/net/Uri;

    .prologue
    .line 38
    const/4 v3, 0x0

    aget-object v1, p1, v3

    .line 39
    .local v1, "inputUri":Landroid/net/Uri;
    const/4 v3, 0x1

    aget-object v2, p1, v3

    .line 41
    .local v2, "outputUri":Landroid/net/Uri;
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/CopyExifDataAndCropPhotoTask;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/ContactPhotoUtils;->copyExifOrientation(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 42
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/CopyExifDataAndCropPhotoTask;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Exception occured while copying exif orientation"

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "uri"    # [Ljava/lang/Object;

    .prologue
    .line 37
    check-cast p1, [Landroid/net/Uri;

    .end local p1    # "uri":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/CopyExifDataAndCropPhotoTask;->doInBackground([Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 1
    .param p1, "result"    # Landroid/net/Uri;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/CopyExifDataAndCropPhotoTask;->mCropActivityRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/CopyExifDataAndCropPhotoTask;->mCropActivityRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 51
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/CopyExifDataAndCropPhotoTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
