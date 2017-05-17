.class Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView$1;
.super Ljava/lang/Object;
.source "VideoCallSwitchCardView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView$1;->this$0:Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 109
    const/4 v0, 0x1

    .line 110
    .local v0, "isEnabled":Z
    instance-of v2, p1, Landroid/widget/Switch;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 111
    check-cast v1, Landroid/widget/Switch;

    .line 112
    .local v1, "switchView":Landroid/widget/Switch;
    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 113
    .local v0, "isEnabled":Z
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 115
    .end local v0    # "isEnabled":Z
    .end local v1    # "switchView":Landroid/widget/Switch;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView$1;->this$0:Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->-get0(Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;)Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->setVilteEnabled(Z)V

    .line 108
    return-void
.end method
