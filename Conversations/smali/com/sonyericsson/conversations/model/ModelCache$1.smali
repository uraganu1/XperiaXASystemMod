.class Lcom/sonyericsson/conversations/model/ModelCache$1;
.super Landroid/database/ContentObserver;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/model/ModelCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/model/ModelCache;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/model/ModelCache;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/model/ModelCache;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/ModelCache$1;->this$0:Lcom/sonyericsson/conversations/model/ModelCache;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/mms/MmsConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 64
    const-string/jumbo v0, "Clearing message cache due to content observer change"

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache$1;->this$0:Lcom/sonyericsson/conversations/model/ModelCache;

    invoke-static {v0}, Lcom/sonyericsson/conversations/model/ModelCache;->-get0(Lcom/sonyericsson/conversations/model/ModelCache;)Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache$1;->this$0:Lcom/sonyericsson/conversations/model/ModelCache;

    invoke-static {v0}, Lcom/sonyericsson/conversations/model/ModelCache;->-get2(Lcom/sonyericsson/conversations/model/ModelCache;)Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 62
    return-void
.end method
