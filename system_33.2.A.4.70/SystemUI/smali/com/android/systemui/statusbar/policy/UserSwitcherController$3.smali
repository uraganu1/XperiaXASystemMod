.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;
.super Landroid/database/ContentObserver;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 420
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get1(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 421
    const-string/jumbo v4, "lockscreenSimpleUserSwitcher"

    .line 420
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-set4(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)Z

    .line 422
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get1(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 423
    const-string/jumbo v4, "add_users_when_locked"

    .line 422
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-set0(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)Z

    .line 424
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    const/16 v1, -0x2710

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap2(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    .line 419
    return-void

    :cond_0
    move v0, v2

    .line 420
    goto :goto_0

    :cond_1
    move v1, v2

    .line 422
    goto :goto_1
.end method
