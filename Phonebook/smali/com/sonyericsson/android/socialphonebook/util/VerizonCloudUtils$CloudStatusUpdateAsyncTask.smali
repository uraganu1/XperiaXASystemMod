.class public Lcom/sonyericsson/android/socialphonebook/util/VerizonCloudUtils$CloudStatusUpdateAsyncTask;
.super Landroid/os/AsyncTask;
.source "VerizonCloudUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/VerizonCloudUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloudStatusUpdateAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 202
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/VerizonCloudUtils$CloudStatusUpdateAsyncTask;->mContentResolver:Landroid/content/ContentResolver;

    .line 202
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/VerizonCloudUtils$CloudStatusUpdateAsyncTask;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/VerizonCloudUtils;->-wrap0(Landroid/content/ContentResolver;)V

    .line 209
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 207
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "arg0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/VerizonCloudUtils$CloudStatusUpdateAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
