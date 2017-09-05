.class Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl$2;
.super Ljava/lang/Object;
.source "DataTrafficControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl$2;->this$0:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 77
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl$2;->this$0:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;

    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->isDataTrafficEnabled()Z

    move-result v0

    .line 79
    .local v0, "newState":Z
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl$2;->this$0:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->-get0(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;)Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl$2;->this$0:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->-get2(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;)I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 82
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl$2;->this$0:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->-get2(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->-set1(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;I)I

    .line 83
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl$2;->this$0:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->-get1(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl$2;->this$0:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;

    invoke-static {v2}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->-get3(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string/jumbo v1, "DataTrafficControllerImpl"

    const-string/jumbo v2, "Received data traffic state changed but it hasn\'t (yet)?"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl$2;->this$0:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;

    invoke-static {v1, v0}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->-set0(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;Z)Z

    .line 90
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl$2;->this$0:Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;->-wrap0(Lcom/sonymobile/systemui/statusbar/policy/DataTrafficControllerImpl;)V

    goto :goto_0
.end method
