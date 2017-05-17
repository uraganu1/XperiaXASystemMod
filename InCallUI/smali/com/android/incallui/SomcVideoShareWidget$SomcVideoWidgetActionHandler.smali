.class Lcom/android/incallui/SomcVideoShareWidget$SomcVideoWidgetActionHandler;
.super Ljava/lang/Object;
.source "SomcVideoShareWidget.java"

# interfaces
.implements Lcom/android/incallui/callwidget/ISomcCallWidget$WidgetActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SomcVideoShareWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SomcVideoWidgetActionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SomcVideoShareWidget;


# direct methods
.method private constructor <init>(Lcom/android/incallui/SomcVideoShareWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/SomcVideoShareWidget;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/incallui/SomcVideoShareWidget$SomcVideoWidgetActionHandler;->this$0:Lcom/android/incallui/SomcVideoShareWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/SomcVideoShareWidget;Lcom/android/incallui/SomcVideoShareWidget$SomcVideoWidgetActionHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/SomcVideoShareWidget;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/SomcVideoShareWidget$SomcVideoWidgetActionHandler;-><init>(Lcom/android/incallui/SomcVideoShareWidget;)V

    return-void
.end method


# virtual methods
.method public destroy(Landroid/content/Context;Lcom/android/incallui/callwidget/ISomcCallWidget;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widget"    # Lcom/android/incallui/callwidget/ISomcCallWidget;

    .prologue
    .line 60
    return-void
.end method

.method public focusChange(Landroid/content/Context;Lcom/android/incallui/callwidget/ISomcCallWidget;IZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widget"    # Lcom/android/incallui/callwidget/ISomcCallWidget;
    .param p3, "widgetType"    # I
    .param p4, "hasFocus"    # Z

    .prologue
    .line 65
    return-void
.end method

.method public select(Landroid/content/Context;Lcom/android/incallui/callwidget/ISomcCallWidget;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widget"    # Lcom/android/incallui/callwidget/ISomcCallWidget;
    .param p3, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 48
    iget-object v2, p0, Lcom/android/incallui/SomcVideoShareWidget$SomcVideoWidgetActionHandler;->this$0:Lcom/android/incallui/SomcVideoShareWidget;

    invoke-static {v2}, Lcom/android/incallui/SomcVideoShareWidget;->-get0(Lcom/android/incallui/SomcVideoShareWidget;)Lcom/android/incallui/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    .line 49
    .local v0, "videoCall":Landroid/telecom/InCallService$VideoCall;
    if-nez v0, :cond_0

    .line 50
    return-void

    .line 53
    :cond_0
    new-instance v1, Landroid/telecom/VideoProfile;

    invoke-direct {v1, v4}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 54
    .local v1, "videoProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 55
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallCameraManager;->setUseFrontFacingCamera(Z)V

    .line 56
    iget-object v2, p0, Lcom/android/incallui/SomcVideoShareWidget$SomcVideoWidgetActionHandler;->this$0:Lcom/android/incallui/SomcVideoShareWidget;

    invoke-static {v2}, Lcom/android/incallui/SomcVideoShareWidget;->-get0(Lcom/android/incallui/SomcVideoShareWidget;)Lcom/android/incallui/Call;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    .line 46
    return-void
.end method
