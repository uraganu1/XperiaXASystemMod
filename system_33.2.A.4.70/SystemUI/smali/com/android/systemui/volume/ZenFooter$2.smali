.class Lcom/android/systemui/volume/ZenFooter$2;
.super Ljava/lang/Object;
.source "ZenFooter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/ZenFooter;->init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ZenFooter;

.field final synthetic val$controller:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenFooter;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/ZenFooter;
    .param p2, "val$controller"    # Lcom/android/systemui/statusbar/policy/ZenModeController;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter$2;->this$0:Lcom/android/systemui/volume/ZenFooter;

    iput-object p2, p0, Lcom/android/systemui/volume/ZenFooter$2;->val$controller:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter$2;->val$controller:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {}, Lcom/android/systemui/volume/ZenFooter;->-get0()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 89
    return-void
.end method
