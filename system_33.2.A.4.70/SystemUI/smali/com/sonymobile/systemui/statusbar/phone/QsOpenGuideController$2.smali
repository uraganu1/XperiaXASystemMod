.class Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$2;
.super Ljava/lang/Object;
.source "QsOpenGuideController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->hideGuide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$2;->this$0:Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 148
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$2;->this$0:Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;

    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->-get0(Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$2;->this$0:Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;

    invoke-static {v0, v2}, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->-set0(Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;Landroid/view/View;)Landroid/view/View;

    .line 150
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$2;->this$0:Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;

    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->-get1(Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;)Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$OnGuideHideListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$2;->this$0:Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;

    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->-get1(Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;)Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$OnGuideHideListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$OnGuideHideListener;->onGuideHide()V

    .line 147
    :cond_0
    return-void
.end method
