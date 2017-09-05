.class Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$TimeoutRunnable;
.super Ljava/lang/Object;
.source "QsOpenGuideController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;


# direct methods
.method private constructor <init>(Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$TimeoutRunnable;->this$0:Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$TimeoutRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$TimeoutRunnable;-><init>(Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController$TimeoutRunnable;->this$0:Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;->-set1(Lcom/sonymobile/systemui/statusbar/phone/QsOpenGuideController;Z)Z

    .line 171
    return-void
.end method
