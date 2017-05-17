.class Lcom/sonyericsson/android/socialphonebook/SimExportActivity$QueryThread;
.super Ljava/lang/Object;
.source "SimExportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/SimExportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryThread"
.end annotation


# instance fields
.field private final mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/SimExportActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)V
    .locals 1
    .param p1, "context"    # Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    .prologue
    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$QueryThread;->mRef:Ljava/lang/ref/WeakReference;

    .line 410
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 416
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity$QueryThread;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;

    .line 418
    .local v0, "context":Lcom/sonyericsson/android/socialphonebook/SimExportActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 419
    :cond_0
    return-void

    .line 422
    :cond_1
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-get8(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)Lcom/sonyericsson/android/socialphonebook/SimExportThread;

    move-result-object v1

    if-nez v1, :cond_2

    .line 423
    return-void

    .line 426
    :cond_2
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SimExportActivity;->-get8(Lcom/sonyericsson/android/socialphonebook/SimExportActivity;)Lcom/sonyericsson/android/socialphonebook/SimExportThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/SimExportThread;->start()V

    .line 415
    return-void
.end method
