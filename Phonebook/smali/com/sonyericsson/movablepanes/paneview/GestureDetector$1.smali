.class Lcom/sonyericsson/movablepanes/paneview/GestureDetector$1;
.super Ljava/lang/Object;
.source "GestureDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/movablepanes/paneview/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/movablepanes/paneview/GestureDetector;


# direct methods
.method constructor <init>(Lcom/sonyericsson/movablepanes/paneview/GestureDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/movablepanes/paneview/GestureDetector;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$1;->this$0:Lcom/sonyericsson/movablepanes/paneview/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$1;->this$0:Lcom/sonyericsson/movablepanes/paneview/GestureDetector;

    invoke-static {v0}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->-get3(Lcom/sonyericsson/movablepanes/paneview/GestureDetector;)Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->CLICKED:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    if-ne v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$1;->this$0:Lcom/sonyericsson/movablepanes/paneview/GestureDetector;

    invoke-static {v0}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->-get0(Lcom/sonyericsson/movablepanes/paneview/GestureDetector;)Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$1;->this$0:Lcom/sonyericsson/movablepanes/paneview/GestureDetector;

    invoke-static {v1}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->-get1(Lcom/sonyericsson/movablepanes/paneview/GestureDetector;)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$1;->this$0:Lcom/sonyericsson/movablepanes/paneview/GestureDetector;

    invoke-static {v2}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->-get2(Lcom/sonyericsson/movablepanes/paneview/GestureDetector;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$GestureListener;->onLongPress(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$1;->this$0:Lcom/sonyericsson/movablepanes/paneview/GestureDetector;

    sget-object v1, Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;->LONGPRESSED:Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    invoke-static {v0, v1}, Lcom/sonyericsson/movablepanes/paneview/GestureDetector;->-set0(Lcom/sonyericsson/movablepanes/paneview/GestureDetector;Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;)Lcom/sonyericsson/movablepanes/paneview/GestureDetector$TouchState;

    .line 170
    :cond_0
    return-void
.end method
