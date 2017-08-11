.class public Lcom/android/incallui/callwidget/SomcCallWidgetManager;
.super Lcom/sonymobile/callwidgetframework/ICallWidgetManager$Stub;
.source "SomcCallWidgetManager.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;,
        Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;,
        Lcom/android/incallui/callwidget/SomcCallWidgetManager$CustomComparator;,
        Lcom/android/incallui/callwidget/SomcCallWidgetManager$1;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/callwidget/ISomcCallWidget;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetStacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/callwidget/ISomcCallWidget;",
            ">;"
        }
    .end annotation
.end field

.field private packageListener:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/incallui/callwidget/SomcCallWidgetManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/incallui/callwidget/SomcCallWidgetManager;Lcom/android/incallui/callwidget/SomcCallWidget;I)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "widget"    # Lcom/android/incallui/callwidget/SomcCallWidget;
    .param p2, "uid"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->getResolveInfoFromUid(Lcom/android/incallui/callwidget/SomcCallWidget;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/incallui/callwidget/SomcCallWidgetManager;Ljava/util/List;Ljava/lang/String;)Lcom/android/incallui/callwidget/ISomcCallWidget;
    .locals 1
    .param p1, "widgetList"    # Ljava/util/List;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->getWidget(Ljava/util/List;Ljava/lang/String;)Lcom/android/incallui/callwidget/ISomcCallWidget;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/incallui/callwidget/SomcCallWidgetManager;I)Ljava/util/List;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->getWidgetsFromUid(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/incallui/callwidget/SomcCallWidgetManager;I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->loadWidgetsFromUid(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/incallui/callwidget/SomcCallWidgetManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->notifyMenuUpdate()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/incallui/callwidget/SomcCallWidgetManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->reloadWidgetText()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/sonymobile/callwidgetframework/ICallWidgetManager$Stub;-><init>()V

    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 66
    iput-object v1, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mListeners:Ljava/util/HashMap;

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mLocalWidgets:Ljava/util/ArrayList;

    .line 75
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mWidgetStacks:Ljava/util/HashMap;

    .line 85
    new-instance v1, Lcom/android/incallui/callwidget/SomcCallWidgetManager$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager$1;-><init>(Lcom/android/incallui/callwidget/SomcCallWidgetManager;)V

    iput-object v1, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->packageListener:Landroid/content/BroadcastReceiver;

    .line 140
    iput-object p1, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mContext:Landroid/content/Context;

    .line 142
    iget-object v1, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mWidgetStacks:Ljava/util/HashMap;

    sget-object v2, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_BACKGROUND:Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    invoke-virtual {v2}, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v1, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mWidgetStacks:Ljava/util/HashMap;

    sget-object v2, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_MAIN:Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    invoke-virtual {v2}, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v1, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mWidgetStacks:Ljava/util/HashMap;

    sget-object v2, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_DIALOG:Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    invoke-virtual {v2}, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-direct {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->loadWidgets()V

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->packageListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 155
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->packageListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    return-void
.end method

.method private checkCallerUid(Ljava/lang/String;)V
    .locals 7
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 644
    invoke-direct {p0, p1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->getWidget(Ljava/lang/String;)Lcom/android/incallui/callwidget/ISomcCallWidget;

    move-result-object v2

    .line 645
    .local v2, "w":Lcom/android/incallui/callwidget/ISomcCallWidget;
    const/4 v1, 0x0

    .line 646
    .local v1, "checkedOk":Z
    if-eqz v2, :cond_0

    .line 647
    instance-of v4, v2, Lcom/android/incallui/callwidget/SomcCallWidget;

    if-eqz v4, :cond_1

    move-object v3, v2

    .line 648
    check-cast v3, Lcom/android/incallui/callwidget/SomcCallWidget;

    .line 649
    .local v3, "widget":Lcom/android/incallui/callwidget/SomcCallWidget;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 651
    .local v0, "callingUid":I
    invoke-virtual {v3}, Lcom/android/incallui/callwidget/SomcCallWidget;->getUid()I

    move-result v4

    if-ne v0, v4, :cond_0

    .line 652
    const/4 v1, 0x1

    .line 659
    .end local v0    # "callingUid":I
    .end local v3    # "widget":Lcom/android/incallui/callwidget/SomcCallWidget;
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 660
    new-instance v4, Landroid/os/RemoteException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid widget className: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 656
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 643
    :cond_2
    return-void
.end method

.method private checkPackagePermission(Landroid/content/pm/ResolveInfo;)Z
    .locals 5
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v1, 0x0

    .line 665
    iget-object v2, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.sonymobile.permission.CALL_WIDGET_FRAMEWORK"

    .line 666
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 665
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 667
    .local v0, "res":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private checkType(I)V
    .locals 3
    .param p1, "widgetType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 460
    invoke-static {p1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->valueOf(I)Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 461
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid widget type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_0
    return-void
.end method

.method private destroyAllWidgets()V
    .locals 5

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->getWidgetList()Ljava/util/List;

    move-result-object v2

    .line 442
    .local v2, "widgetList":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/callwidget/ISomcCallWidget;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "destroyAllWidgets() #widgets: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->log(Ljava/lang/String;)V

    .line 443
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "widget$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/callwidget/ISomcCallWidget;

    .line 444
    .local v0, "widget":Lcom/android/incallui/callwidget/ISomcCallWidget;
    invoke-interface {v0}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getActionHandler()Lcom/android/incallui/callwidget/ISomcCallWidget$WidgetActionHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mContext:Landroid/content/Context;

    invoke-interface {v3, v4, v0}, Lcom/android/incallui/callwidget/ISomcCallWidget$WidgetActionHandler;->destroy(Landroid/content/Context;Lcom/android/incallui/callwidget/ISomcCallWidget;)V

    goto :goto_0

    .line 446
    .end local v0    # "widget":Lcom/android/incallui/callwidget/ISomcCallWidget;
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 447
    invoke-direct {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->loadWidgets()V

    .line 440
    return-void
.end method

.method private getListener(Ljava/util/Map$Entry;)Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "listenerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;Ljava/lang/Boolean;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;

    return-object v0
.end method

.method private getResolveInfoFromUid(Lcom/android/incallui/callwidget/SomcCallWidget;I)Landroid/content/pm/ResolveInfo;
    .locals 8
    .param p1, "widget"    # Lcom/android/incallui/callwidget/SomcCallWidget;
    .param p2, "uid"    # I

    .prologue
    const/4 v7, 0x0

    .line 562
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "com.sonymobile.callwidget.CALLWIDGETPROVIDER"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    .local v0, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 565
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v5, 0x81

    .line 564
    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 567
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_1

    .line 568
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 569
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v2}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->checkPackagePermission(Landroid/content/pm/ResolveInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 570
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, p2, :cond_0

    .line 571
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/incallui/callwidget/SomcCallWidget;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 569
    if-eqz v5, :cond_0

    .line 572
    return-object v2

    .line 576
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v3    # "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v7
.end method

.method private getWidget(Ljava/lang/String;)Lcom/android/incallui/callwidget/ISomcCallWidget;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 521
    iget-object v1, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->getWidget(Ljava/util/List;Ljava/lang/String;)Lcom/android/incallui/callwidget/ISomcCallWidget;

    move-result-object v0

    .line 523
    .local v0, "widget":Lcom/android/incallui/callwidget/ISomcCallWidget;
    if-nez v0, :cond_0

    .line 524
    iget-object v1, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mLocalWidgets:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->getWidget(Ljava/util/List;Ljava/lang/String;)Lcom/android/incallui/callwidget/ISomcCallWidget;

    move-result-object v0

    .line 526
    :cond_0
    return-object v0
.end method

.method private getWidget(Ljava/util/List;Ljava/lang/String;)Lcom/android/incallui/callwidget/ISomcCallWidget;
    .locals 4
    .param p2, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/callwidget/ISomcCallWidget;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/incallui/callwidget/ISomcCallWidget;"
        }
    .end annotation

    .prologue
    .local p1, "widgetList":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/callwidget/ISomcCallWidget;>;"
    const/4 v3, 0x0

    .line 531
    if-eqz p2, :cond_1

    .line 532
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "widget$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/callwidget/ISomcCallWidget;

    .line 533
    .local v0, "widget":Lcom/android/incallui/callwidget/ISomcCallWidget;
    invoke-interface {v0}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 534
    return-object v0

    .line 538
    .end local v0    # "widget":Lcom/android/incallui/callwidget/ISomcCallWidget;
    .end local v1    # "widget$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v3
.end method

.method private getWidgetList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/callwidget/ISomcCallWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .local v0, "allWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/callwidget/ISomcCallWidget;>;"
    iget-object v1, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 544
    iget-object v1, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mLocalWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 545
    return-object v0
.end method

.method private getWidgetsFromUid(I)Ljava/util/List;
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/callwidget/SomcCallWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .local v0, "callWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/callwidget/SomcCallWidget;>;"
    iget-object v4, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "w$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/callwidget/ISomcCallWidget;

    .line 551
    .local v1, "w":Lcom/android/incallui/callwidget/ISomcCallWidget;
    instance-of v4, v1, Lcom/android/incallui/callwidget/SomcCallWidget;

    if-eqz v4, :cond_0

    move-object v3, v1

    .line 552
    check-cast v3, Lcom/android/incallui/callwidget/SomcCallWidget;

    .line 553
    .local v3, "widget":Lcom/android/incallui/callwidget/SomcCallWidget;
    invoke-virtual {v3}, Lcom/android/incallui/callwidget/SomcCallWidget;->getUid()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 554
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 558
    .end local v1    # "w":Lcom/android/incallui/callwidget/ISomcCallWidget;
    .end local v3    # "widget":Lcom/android/incallui/callwidget/SomcCallWidget;
    :cond_1
    return-object v0
.end method

.method private isAnyWidgetAreaAvailable()Z
    .locals 3

    .prologue
    .line 224
    iget-object v2, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listenerEntry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 225
    .local v0, "listenerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;Ljava/lang/Boolean;>;"
    invoke-direct {p0, v0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->isWidgetAreaReserved(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 226
    const/4 v2, 0x1

    return v2

    .line 229
    .end local v0    # "listenerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;Ljava/lang/Boolean;>;"
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isWidgetAreaReserved(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "listenerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;Ljava/lang/Boolean;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private loadWidgets()V
    .locals 8

    .prologue
    .line 616
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "com.sonymobile.callwidget.CALLWIDGETPROVIDER"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 617
    .local v0, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 619
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v6, 0x81

    .line 618
    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 621
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_1

    .line 622
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "resolveInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 623
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v5, Lcom/android/incallui/callwidget/SomcCallWidget;

    invoke-direct {v5, v2, v1}, Lcom/android/incallui/callwidget/SomcCallWidget;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V

    .line 624
    .local v5, "widget":Lcom/android/incallui/callwidget/SomcCallWidget;
    invoke-direct {p0, v2}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->checkPackagePermission(Landroid/content/pm/ResolveInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 625
    iget-object v6, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 627
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid permission for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/incallui/callwidget/SomcCallWidget;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 631
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v3    # "resolveInfo$iterator":Ljava/util/Iterator;
    .end local v5    # "widget":Lcom/android/incallui/callwidget/SomcCallWidget;
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->orderByPrio()V

    .line 614
    return-void
.end method

.method private loadWidgetsFromUid(I)V
    .locals 9
    .param p1, "uid"    # I

    .prologue
    .line 580
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v7, "com.sonymobile.callwidget.CALLWIDGETPROVIDER"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 581
    .local v0, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 583
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v7, 0x81

    .line 582
    invoke-virtual {v1, v0, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 585
    .local v5, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_4

    .line 586
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 587
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v7, p1, :cond_0

    .line 588
    new-instance v6, Lcom/android/incallui/callwidget/SomcCallWidget;

    invoke-direct {v6, v3, v1}, Lcom/android/incallui/callwidget/SomcCallWidget;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V

    .line 590
    .local v6, "widget":Lcom/android/incallui/callwidget/SomcCallWidget;
    iget-object v7, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/android/incallui/callwidget/SomcCallWidget;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->getWidget(Ljava/util/List;Ljava/lang/String;)Lcom/android/incallui/callwidget/ISomcCallWidget;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/callwidget/SomcCallWidget;

    .line 592
    .local v2, "presentWidget":Lcom/android/incallui/callwidget/SomcCallWidget;
    if-eqz v2, :cond_2

    .line 594
    invoke-direct {p0, v3}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->checkPackagePermission(Landroid/content/pm/ResolveInfo;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 595
    invoke-virtual {v2, v3}, Lcom/android/incallui/callwidget/SomcCallWidget;->setResolveInfo(Landroid/content/pm/ResolveInfo;)V

    goto :goto_0

    .line 598
    :cond_1
    iget-object v7, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 601
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->checkPackagePermission(Landroid/content/pm/ResolveInfo;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 602
    iget-object v7, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 604
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "NOT adding widget: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/incallui/callwidget/SomcCallWidget;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " no permission"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 610
    .end local v2    # "presentWidget":Lcom/android/incallui/callwidget/SomcCallWidget;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "resolveInfo$iterator":Ljava/util/Iterator;
    .end local v6    # "widget":Lcom/android/incallui/callwidget/SomcCallWidget;
    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->orderByPrio()V

    .line 579
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 686
    const-string/jumbo v0, "SomcCallWidgetManager"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    return-void
.end method

.method private notifyMenuUpdate()V
    .locals 4

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->getWidgetList()Ljava/util/List;

    move-result-object v2

    .line 198
    .local v2, "widgetList":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/callwidget/ISomcCallWidget;>;"
    iget-object v3, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mListeners:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 199
    iget-object v3, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listenerEntry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 200
    .local v0, "listenerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;Ljava/lang/Boolean;>;"
    invoke-direct {p0, v0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->getListener(Ljava/util/Map$Entry;)Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;->onMenuUpdate(Ljava/util/List;)V

    goto :goto_0

    .line 196
    .end local v0    # "listenerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;Ljava/lang/Boolean;>;"
    .end local v1    # "listenerEntry$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private notifyViewAdded()V
    .locals 3

    .prologue
    .line 206
    iget-object v2, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mListeners:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 207
    iget-object v2, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listenerEntry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 208
    .local v0, "listenerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;Ljava/lang/Boolean;>;"
    invoke-direct {p0, v0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->getListener(Ljava/util/Map$Entry;)Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;->onViewAdded()V

    goto :goto_0

    .line 205
    .end local v0    # "listenerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;Ljava/lang/Boolean;>;"
    .end local v1    # "listenerEntry$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private notifyWidgetUpdate(Landroid/widget/RemoteViews;I)V
    .locals 3
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "widgetType"    # I

    .prologue
    .line 214
    iget-object v2, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mListeners:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 215
    iget-object v2, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listenerEntry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 216
    .local v0, "listenerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;Ljava/lang/Boolean;>;"
    invoke-direct {p0, v0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->isWidgetAreaReserved(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 217
    invoke-direct {p0, v0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->getListener(Ljava/util/Map$Entry;)Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;->onWidgetUpdate(Landroid/widget/RemoteViews;I)V

    goto :goto_0

    .line 213
    .end local v0    # "listenerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;Ljava/lang/Boolean;>;"
    .end local v1    # "listenerEntry$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private onWidgetUpdate(Ljava/util/Stack;Landroid/widget/RemoteViews;I)V
    .locals 4
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p3, "widgetType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/RemoteViews;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 467
    .local p1, "widgetStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->isAnyWidgetAreaAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 468
    invoke-direct {p0, p2, p3}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->notifyWidgetUpdate(Landroid/widget/RemoteViews;I)V

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 471
    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->getWidget(Ljava/lang/String;)Lcom/android/incallui/callwidget/ISomcCallWidget;

    move-result-object v0

    .line 472
    .local v0, "w":Lcom/android/incallui/callwidget/ISomcCallWidget;
    if-eqz v0, :cond_0

    .line 473
    invoke-interface {v0}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getActionHandler()Lcom/android/incallui/callwidget/ISomcCallWidget$WidgetActionHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, p3, v3}, Lcom/android/incallui/callwidget/ISomcCallWidget$WidgetActionHandler;->focusChange(Landroid/content/Context;Lcom/android/incallui/callwidget/ISomcCallWidget;IZ)V

    goto :goto_0
.end method

.method private orderByPrio()V
    .locals 3

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/incallui/callwidget/SomcCallWidgetManager$CustomComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/incallui/callwidget/SomcCallWidgetManager$CustomComparator;-><init>(Lcom/android/incallui/callwidget/SomcCallWidgetManager$CustomComparator;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 670
    return-void
.end method

.method private reloadWidgetText()V
    .locals 4

    .prologue
    .line 635
    iget-object v3, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "w$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/callwidget/ISomcCallWidget;

    .line 636
    .local v0, "w":Lcom/android/incallui/callwidget/ISomcCallWidget;
    instance-of v3, v0, Lcom/android/incallui/callwidget/SomcCallWidget;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 637
    check-cast v2, Lcom/android/incallui/callwidget/SomcCallWidget;

    .line 638
    .local v2, "widget":Lcom/android/incallui/callwidget/SomcCallWidget;
    invoke-virtual {v2}, Lcom/android/incallui/callwidget/SomcCallWidget;->reloadText()V

    goto :goto_0

    .line 634
    .end local v0    # "w":Lcom/android/incallui/callwidget/ISomcCallWidget;
    .end local v2    # "widget":Lcom/android/incallui/callwidget/SomcCallWidget;
    :cond_1
    return-void
.end method

.method private setViewByType(Ljava/lang/String;Landroid/widget/RemoteViews;ILjava/util/Stack;)V
    .locals 5
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p3, "widgetType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/widget/RemoteViews;",
            "I",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p4, "widgetStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 481
    if-eqz p2, :cond_0

    invoke-virtual {p4, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 494
    :cond_0
    if-nez p2, :cond_6

    .line 496
    invoke-virtual {p4}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 497
    invoke-virtual {p4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 498
    invoke-virtual {p4}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 501
    invoke-virtual {p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->getWidget(Ljava/lang/String;)Lcom/android/incallui/callwidget/ISomcCallWidget;

    move-result-object v1

    .line 502
    .local v1, "w":Lcom/android/incallui/callwidget/ISomcCallWidget;
    if-eqz v1, :cond_1

    .line 503
    invoke-interface {v1}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getActionHandler()Lcom/android/incallui/callwidget/ISomcCallWidget$WidgetActionHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, p3, v4}, Lcom/android/incallui/callwidget/ISomcCallWidget$WidgetActionHandler;->focusChange(Landroid/content/Context;Lcom/android/incallui/callwidget/ISomcCallWidget;IZ)V

    .line 480
    .end local v1    # "w":Lcom/android/incallui/callwidget/ISomcCallWidget;
    :cond_1
    :goto_0
    return-void

    .line 483
    :cond_2
    invoke-virtual {p4}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 486
    invoke-virtual {p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->getWidget(Ljava/lang/String;)Lcom/android/incallui/callwidget/ISomcCallWidget;

    move-result-object v0

    .line 487
    .local v0, "oldW":Lcom/android/incallui/callwidget/ISomcCallWidget;
    if-eqz v0, :cond_3

    .line 488
    invoke-interface {v0}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getActionHandler()Lcom/android/incallui/callwidget/ISomcCallWidget$WidgetActionHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, p3, v4}, Lcom/android/incallui/callwidget/ISomcCallWidget$WidgetActionHandler;->focusChange(Landroid/content/Context;Lcom/android/incallui/callwidget/ISomcCallWidget;IZ)V

    .line 491
    .end local v0    # "oldW":Lcom/android/incallui/callwidget/ISomcCallWidget;
    :cond_3
    invoke-virtual {p4, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    invoke-direct {p0, p4, p2, p3}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->onWidgetUpdate(Ljava/util/Stack;Landroid/widget/RemoteViews;I)V

    .line 493
    invoke-direct {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->notifyViewAdded()V

    goto :goto_0

    .line 508
    :cond_4
    invoke-direct {p0, p4, v3, p3}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->onWidgetUpdate(Ljava/util/Stack;Landroid/widget/RemoteViews;I)V

    goto :goto_0

    .line 510
    :cond_5
    invoke-virtual {p4, p1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 511
    invoke-virtual {p4, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 513
    :cond_6
    invoke-virtual {p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 515
    invoke-direct {p0, p4, p2, p3}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->onWidgetUpdate(Ljava/util/Stack;Landroid/widget/RemoteViews;I)V

    goto :goto_0
.end method


# virtual methods
.method public clearStack()V
    .locals 3

    .prologue
    .line 400
    iget-object v2, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mWidgetStacks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 401
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Stack<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    goto :goto_0

    .line 399
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Stack<Ljava/lang/String;>;>;"
    :cond_0
    return-void
.end method

.method public clearWidgetView(Ljava/lang/String;I)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "widgetType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " clearWidgetView type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->log(Ljava/lang/String;)V

    .line 338
    invoke-direct {p0, p1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->checkCallerUid(Ljava/lang/String;)V

    .line 339
    invoke-direct {p0, p2}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->checkType(I)V

    .line 340
    iget-object v1, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mWidgetStacks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 341
    .local v0, "widgetStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->setViewByType(Ljava/lang/String;Landroid/widget/RemoteViews;ILjava/util/Stack;)V

    .line 336
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->packageListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 184
    return-void
.end method

.method public isAnyRemoteViewPresent()Z
    .locals 3

    .prologue
    .line 451
    iget-object v2, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mWidgetStacks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 452
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Stack<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 453
    const/4 v2, 0x1

    return v2

    .line 456
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Stack<Ljava/lang/String;>;>;"
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public isAnyWidgetVisibleAfterCall()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 233
    invoke-direct {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->getWidgetList()Ljava/util/List;

    move-result-object v2

    .line 235
    .local v2, "widgetList":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/callwidget/ISomcCallWidget;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 236
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "w$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/callwidget/ISomcCallWidget;

    .line 237
    .local v0, "w":Lcom/android/incallui/callwidget/ISomcCallWidget;
    invoke-interface {v0}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getVisibleAfterCall()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 238
    const/4 v3, 0x1

    return v3

    .line 242
    .end local v0    # "w":Lcom/android/incallui/callwidget/ISomcCallWidget;
    .end local v1    # "w$iterator":Ljava/util/Iterator;
    :cond_1
    return v4
.end method

.method public isWidgetFocused(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "widgetType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isWidgetFocused type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->log(Ljava/lang/String;)V

    .line 346
    invoke-direct {p0, p1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->checkCallerUid(Ljava/lang/String;)V

    .line 347
    invoke-direct {p0, p2}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->checkType(I)V

    .line 348
    invoke-direct {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->isAnyWidgetAreaAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    return v3

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mWidgetStacks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 352
    .local v0, "widgetStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    return v3

    .line 355
    :cond_1
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 428
    if-eq p2, p1, :cond_0

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v0, :cond_0

    .line 430
    invoke-direct {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->destroyAllWidgets()V

    .line 431
    invoke-virtual {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->clearStack()V

    .line 427
    :cond_0
    return-void
.end method

.method public registerListener(Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mListeners:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->notifyMenuUpdate()V

    .line 163
    return-void
.end method

.method public registerLocalWidget(Lcom/android/incallui/callwidget/SomcLocalCallWidget;)V
    .locals 1
    .param p1, "callWidget"    # Lcom/android/incallui/callwidget/SomcLocalCallWidget;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mLocalWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-direct {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->notifyMenuUpdate()V

    .line 411
    return-void
.end method

.method public setAreaReserved(Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;Z)V
    .locals 12
    .param p1, "listener"    # Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;
    .param p2, "reserved"    # Z

    .prologue
    const/4 v11, 0x0

    .line 370
    iget-object v7, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eq v7, p2, :cond_3

    .line 371
    invoke-direct {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->isAnyWidgetAreaAvailable()Z

    move-result v1

    .line 372
    .local v1, "areaWasAvailable":Z
    iget-object v7, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mListeners:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-direct {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->isAnyWidgetAreaAvailable()Z

    move-result v0

    .line 374
    .local v0, "areaIsAvailable":Z
    iget-object v7, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mWidgetStacks:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 375
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Stack<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Stack;

    .line 376
    .local v4, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 377
    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 378
    .local v5, "topWidgetClassName":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->getWidget(Ljava/lang/String;)Lcom/android/incallui/callwidget/ISomcCallWidget;

    move-result-object v6

    .line 379
    .local v6, "w":Lcom/android/incallui/callwidget/ISomcCallWidget;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getActionHandler()Lcom/android/incallui/callwidget/ISomcCallWidget$WidgetActionHandler;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 381
    if-eq v1, v0, :cond_1

    .line 382
    invoke-interface {v6}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getActionHandler()Lcom/android/incallui/callwidget/ISomcCallWidget$WidgetActionHandler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mContext:Landroid/content/Context;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 383
    if-eqz p2, :cond_2

    const/4 v7, 0x0

    .line 382
    :goto_1
    invoke-interface {v8, v9, v6, v10, v7}, Lcom/android/incallui/callwidget/ISomcCallWidget$WidgetActionHandler;->focusChange(Landroid/content/Context;Lcom/android/incallui/callwidget/ISomcCallWidget;IZ)V

    .line 385
    :cond_1
    if-eqz p2, :cond_0

    .line 387
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p1, v11, v7}, Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;->onWidgetUpdate(Landroid/widget/RemoteViews;I)V

    goto :goto_0

    .line 383
    :cond_2
    const/4 v7, 0x1

    goto :goto_1

    .line 369
    .end local v0    # "areaIsAvailable":Z
    .end local v1    # "areaWasAvailable":Z
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Stack<Ljava/lang/String;>;>;"
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    .end local v4    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .end local v5    # "topWidgetClassName":Ljava/lang/String;
    .end local v6    # "w":Lcom/android/incallui/callwidget/ISomcCallWidget;
    :cond_3
    return-void
.end method

.method public setMenuItemBackgroundColor(Ljava/lang/String;I)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "colorId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "setMenuItemBackgroundColor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->log(Ljava/lang/String;)V

    .line 304
    invoke-direct {p0, p1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->checkCallerUid(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->getWidget(Ljava/util/List;Ljava/lang/String;)Lcom/android/incallui/callwidget/ISomcCallWidget;

    move-result-object v0

    .line 306
    .local v0, "widget":Lcom/android/incallui/callwidget/ISomcCallWidget;
    if-eqz v0, :cond_0

    .line 307
    invoke-interface {v0, p2}, Lcom/android/incallui/callwidget/ISomcCallWidget;->setButtonBackgroundColor(I)V

    .line 308
    invoke-direct {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->notifyMenuUpdate()V

    .line 302
    :cond_0
    return-void
.end method

.method public setMenuItemIcon(Ljava/lang/String;I)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "iconId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->setMenuItemIconForStatus(Ljava/lang/String;II)V

    .line 287
    return-void
.end method

.method public setMenuItemIconForStatus(Ljava/lang/String;II)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "iconId"    # I
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " setMenuItemIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->log(Ljava/lang/String;)V

    .line 294
    invoke-direct {p0, p1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->checkCallerUid(Ljava/lang/String;)V

    .line 295
    invoke-direct {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->getWidgetList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->getWidget(Ljava/util/List;Ljava/lang/String;)Lcom/android/incallui/callwidget/ISomcCallWidget;

    move-result-object v0

    .line 296
    .local v0, "widget":Lcom/android/incallui/callwidget/ISomcCallWidget;
    if-eqz v0, :cond_0

    .line 297
    invoke-interface {v0, p2, p3}, Lcom/android/incallui/callwidget/ISomcCallWidget;->setIcon(II)V

    .line 298
    invoke-direct {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->notifyMenuUpdate()V

    .line 292
    :cond_0
    return-void
.end method

.method public setMenuItemStatus(Ljava/lang/String;I)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " setMenuItemStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->log(Ljava/lang/String;)V

    .line 269
    invoke-direct {p0, p1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->checkCallerUid(Ljava/lang/String;)V

    .line 270
    invoke-direct {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->getWidgetList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->getWidget(Ljava/util/List;Ljava/lang/String;)Lcom/android/incallui/callwidget/ISomcCallWidget;

    move-result-object v0

    .line 271
    .local v0, "widget":Lcom/android/incallui/callwidget/ISomcCallWidget;
    if-eqz v0, :cond_0

    .line 272
    invoke-interface {v0, p2}, Lcom/android/incallui/callwidget/ISomcCallWidget;->setStatus(I)V

    .line 273
    invoke-direct {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->notifyMenuUpdate()V

    .line 267
    :cond_0
    return-void
.end method

.method public setMenuItemText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " setMenuItemText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->log(Ljava/lang/String;)V

    .line 279
    invoke-direct {p0, p1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->checkCallerUid(Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->getWidgetList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->getWidget(Ljava/util/List;Ljava/lang/String;)Lcom/android/incallui/callwidget/ISomcCallWidget;

    move-result-object v0

    .line 281
    .local v0, "widget":Lcom/android/incallui/callwidget/ISomcCallWidget;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 282
    invoke-interface {v0, p2}, Lcom/android/incallui/callwidget/ISomcCallWidget;->setText(Ljava/lang/String;)V

    .line 283
    invoke-direct {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->notifyMenuUpdate()V

    .line 277
    :cond_0
    return-void
.end method

.method public setMenuItemTextColor(Ljava/lang/String;I)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "colorId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "setMenuItemTextColor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->log(Ljava/lang/String;)V

    .line 314
    invoke-direct {p0, p1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->checkCallerUid(Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->getWidget(Ljava/util/List;Ljava/lang/String;)Lcom/android/incallui/callwidget/ISomcCallWidget;

    move-result-object v0

    .line 316
    .local v0, "widget":Lcom/android/incallui/callwidget/ISomcCallWidget;
    if-eqz v0, :cond_0

    .line 317
    invoke-interface {v0, p2}, Lcom/android/incallui/callwidget/ISomcCallWidget;->setButtonTextColor(I)V

    .line 318
    invoke-direct {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->notifyMenuUpdate()V

    .line 312
    :cond_0
    return-void
.end method

.method public setMenuItemVisible(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " setMenuItemVisible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->log(Ljava/lang/String;)V

    .line 259
    invoke-direct {p0, p1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->checkCallerUid(Ljava/lang/String;)V

    .line 260
    invoke-direct {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->getWidgetList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->getWidget(Ljava/util/List;Ljava/lang/String;)Lcom/android/incallui/callwidget/ISomcCallWidget;

    move-result-object v0

    .line 261
    .local v0, "widget":Lcom/android/incallui/callwidget/ISomcCallWidget;
    if-eqz v0, :cond_0

    .line 262
    invoke-interface {v0, p2}, Lcom/android/incallui/callwidget/ISomcCallWidget;->setVisible(Z)V

    .line 263
    invoke-direct {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->notifyMenuUpdate()V

    .line 257
    :cond_0
    return-void
.end method

.method public setWidgetView(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p3, "widgetType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " setWidgetView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->log(Ljava/lang/String;)V

    .line 325
    invoke-direct {p0, p1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->checkCallerUid(Ljava/lang/String;)V

    .line 326
    invoke-direct {p0, p3}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->checkType(I)V

    .line 327
    if-eqz p2, :cond_0

    .line 328
    iget-object v1, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mWidgetStacks:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 329
    .local v0, "widgetStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->setViewByType(Ljava/lang/String;Landroid/widget/RemoteViews;ILjava/util/Stack;)V

    .line 323
    return-void

    .line 331
    .end local v0    # "widgetStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "The remoteViews are null"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public unregisterListener(Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method public unregisterLocalWidget(Lcom/android/incallui/callwidget/SomcLocalCallWidget;)V
    .locals 1
    .param p1, "callWidget"    # Lcom/android/incallui/callwidget/SomcLocalCallWidget;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->mLocalWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 423
    invoke-direct {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->notifyMenuUpdate()V

    .line 421
    return-void
.end method
