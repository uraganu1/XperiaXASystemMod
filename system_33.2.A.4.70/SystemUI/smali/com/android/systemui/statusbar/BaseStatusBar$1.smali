.class Lcom/android/systemui/statusbar/BaseStatusBar$1;
.super Landroid/database/ContentObserver;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$1;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x0

    .line 277
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$1;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "device_provisioned"

    .line 276
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 278
    .local v1, "provisioned":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$1;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->-get0(Lcom/android/systemui/statusbar/BaseStatusBar;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$1;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->-set0(Lcom/android/systemui/statusbar/BaseStatusBar;Z)Z

    .line 280
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$1;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    .line 282
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$1;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 283
    const-string/jumbo v3, "zen_mode"

    .line 282
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 284
    .local v0, "mode":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$1;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->setZenMode(I)V

    .line 286
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$1;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->-wrap4(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 275
    return-void

    .line 276
    .end local v0    # "mode":I
    .end local v1    # "provisioned":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "provisioned":Z
    goto :goto_0
.end method
