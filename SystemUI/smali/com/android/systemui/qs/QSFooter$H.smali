.class Lcom/android/systemui/qs/QSFooter$H;
.super Landroid/os/Handler;
.source "QSFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSFooter;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSFooter;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSFooter;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooter$H;->this$0:Lcom/android/systemui/qs/QSFooter;

    .line 218
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 217
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSFooter;Landroid/os/Looper;Lcom/android/systemui/qs/QSFooter$H;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSFooter;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSFooter$H;-><init>(Lcom/android/systemui/qs/QSFooter;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 223
    const/4 v1, 0x0

    .line 225
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 226
    const-string/jumbo v1, "handleRefreshState"

    .line 227
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter$H;->this$0:Lcom/android/systemui/qs/QSFooter;

    invoke-static {v3}, Lcom/android/systemui/qs/QSFooter;->-wrap1(Lcom/android/systemui/qs/QSFooter;)V

    .line 222
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 228
    .local v1, "name":Ljava/lang/String;
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_0

    .line 229
    const-string/jumbo v1, "handleClick"

    .line 230
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter$H;->this$0:Lcom/android/systemui/qs/QSFooter;

    invoke-static {v3}, Lcom/android/systemui/qs/QSFooter;->-wrap0(Lcom/android/systemui/qs/QSFooter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    .end local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 233
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "error":Ljava/lang/String;
    const-string/jumbo v3, "QSFooter"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter$H;->this$0:Lcom/android/systemui/qs/QSFooter;

    invoke-static {v3}, Lcom/android/systemui/qs/QSFooter;->-get3(Lcom/android/systemui/qs/QSFooter;)Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
