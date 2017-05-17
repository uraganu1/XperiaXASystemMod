.class Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView$2;
.super Ljava/lang/Object;
.source "VideoCallSwitchCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 123
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView$2;->this$0:Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView$2;->this$0:Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;->-get0(Lcom/sonyericsson/android/socialphonebook/quickcontact/VideoCallSwitchCardView;)Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;->setVilteEnabled(Z)V

    .line 126
    return-void
.end method
