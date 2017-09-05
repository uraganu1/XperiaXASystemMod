.class Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$1;
.super Ljava/lang/Object;
.source "QsOpenGuideController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->showGuide(Landroid/view/ViewGroup;)Z
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
    .line 124
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$1;->this$0:Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$1;->this$0:Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;

    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->-wrap0(Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;)V

    .line 126
    return-void
.end method
