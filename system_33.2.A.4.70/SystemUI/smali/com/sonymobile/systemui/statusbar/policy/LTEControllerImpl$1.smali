.class Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl$1;
.super Landroid/database/ContentObserver;
.source "LTEControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;

    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;->-wrap0(Lcom/sonymobile/systemui/statusbar/policy/LTEControllerImpl;)V

    .line 71
    return-void
.end method
