.class public Lcom/android/incallui/SomcVideoShareWidget;
.super Lcom/android/incallui/callwidget/SomcLocalCallWidget;
.source "SomcVideoShareWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SomcVideoShareWidget$SomcVideoWidgetActionHandler;
    }
.end annotation


# instance fields
.field private mCall:Lcom/android/incallui/Call;


# direct methods
.method static synthetic -get0(Lcom/android/incallui/SomcVideoShareWidget;)Lcom/android/incallui/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SomcVideoShareWidget;->mCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/incallui/callwidget/SomcLocalCallWidget;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Lcom/android/incallui/SomcVideoShareWidget$SomcVideoWidgetActionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/SomcVideoShareWidget$SomcVideoWidgetActionHandler;-><init>(Lcom/android/incallui/SomcVideoShareWidget;Lcom/android/incallui/SomcVideoShareWidget$SomcVideoWidgetActionHandler;)V

    iput-object v0, p0, Lcom/android/incallui/SomcVideoShareWidget;->mActionHandler:Lcom/android/incallui/callwidget/ISomcCallWidget$WidgetActionHandler;

    .line 22
    return-void
.end method


# virtual methods
.method public setCall(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/incallui/SomcVideoShareWidget;->mCall:Lcom/android/incallui/Call;

    .line 27
    return-void
.end method

.method public setStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->setStatus(I)V

    .line 39
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 40
    .local v0, "enabled":Z
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallPresenter;->setRcsVideoEnabled(Z)V

    .line 37
    return-void

    .line 39
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/incallui/callwidget/SomcLocalCallWidget;->setVisible(Z)V

    .line 34
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->setRcsVideoVisible(Z)V

    .line 31
    return-void
.end method
