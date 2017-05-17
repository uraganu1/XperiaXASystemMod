.class Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader$1;
.super Landroid/database/ContentObserver;
.source "DirectoryListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader$1;->this$0:Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader$1;->this$0:Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/list/DirectoryListLoader;->forceLoad()V

    .line 74
    return-void
.end method
