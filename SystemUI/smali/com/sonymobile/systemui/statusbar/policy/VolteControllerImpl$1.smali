.class Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl$1;
.super Landroid/database/ContentObserver;
.source "VolteControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl$1;->this$0:Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;

    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;->-wrap0(Lcom/sonymobile/systemui/statusbar/policy/VolteControllerImpl;)V

    .line 44
    return-void
.end method
