.class public Lcom/android/incallui/callwidget/SomcCallWidgetManagerService;
.super Landroid/app/Service;
.source "SomcCallWidgetManagerService.java"


# instance fields
.field TAG:Ljava/lang/String;

.field private mCallWidgetmgr:Lcom/android/incallui/callwidget/SomcCallWidgetManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 16
    const-string/jumbo v0, "SomcCallWidgetManagerService"

    iput-object v0, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManagerService;->TAG:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBind"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManagerService;->mCallWidgetmgr:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    invoke-virtual {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManagerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManagerService;->mCallWidgetmgr:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    .line 20
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 33
    iget-object v0, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManagerService;->mCallWidgetmgr:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    invoke-virtual {v0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->destroy()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManagerService;->mCallWidgetmgr:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    .line 31
    return-void
.end method
