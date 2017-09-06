.class Lcom/android/incallui/callwidget/SomcCallWidgetManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SomcCallWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/callwidget/SomcCallWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/callwidget/SomcCallWidgetManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/callwidget/SomcCallWidgetManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager$1;->this$0:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v9, "android.intent.extra.UID"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 91
    .local v5, "uid":I
    iget-object v9, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager$1;->this$0:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    invoke-static {v9, v5}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->-wrap2(Lcom/android/incallui/callwidget/SomcCallWidgetManager;I)Ljava/util/List;

    move-result-object v1

    .line 93
    .local v1, "affectedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/callwidget/SomcCallWidget;>;"
    const-string/jumbo v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 94
    iget-object v8, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager$1;->this$0:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    invoke-static {v8, v5}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->-wrap3(Lcom/android/incallui/callwidget/SomcCallWidgetManager;I)V

    .line 135
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager$1;->this$0:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    invoke-static {v8}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->-wrap4(Lcom/android/incallui/callwidget/SomcCallWidgetManager;)V

    .line 88
    return-void

    .line 95
    :cond_1
    const-string/jumbo v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 96
    if-eqz v1, :cond_0

    .line 97
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "widget$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/callwidget/SomcCallWidget;

    .line 98
    .local v6, "widget":Lcom/android/incallui/callwidget/SomcCallWidget;
    iget-object v8, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager$1;->this$0:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    invoke-static {v8}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->-get0(Lcom/android/incallui/callwidget/SomcCallWidgetManager;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 101
    .end local v6    # "widget":Lcom/android/incallui/callwidget/SomcCallWidget;
    .end local v7    # "widget$iterator":Ljava/util/Iterator;
    :cond_2
    const-string/jumbo v9, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 102
    if-eqz v1, :cond_0

    .line 103
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "widget$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/callwidget/SomcCallWidget;

    .line 104
    .restart local v6    # "widget":Lcom/android/incallui/callwidget/SomcCallWidget;
    iget-object v8, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager$1;->this$0:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    invoke-static {v8, v6, v5}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->-wrap0(Lcom/android/incallui/callwidget/SomcCallWidgetManager;Lcom/android/incallui/callwidget/SomcCallWidget;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 105
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_3

    .line 106
    invoke-virtual {v6, v4}, Lcom/android/incallui/callwidget/SomcCallWidget;->setResolveInfo(Landroid/content/pm/ResolveInfo;)V

    goto :goto_2

    .line 109
    :cond_3
    iget-object v8, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager$1;->this$0:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    invoke-static {v8}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->-get0(Lcom/android/incallui/callwidget/SomcCallWidgetManager;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 113
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "widget":Lcom/android/incallui/callwidget/SomcCallWidget;
    .end local v7    # "widget$iterator":Ljava/util/Iterator;
    :cond_4
    const-string/jumbo v9, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 115
    const-string/jumbo v9, "android.intent.extra.changed_component_name_list"

    .line 114
    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "components":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 118
    array-length v9, v3

    :goto_3
    if-ge v8, v9, :cond_0

    aget-object v2, v3, v8

    .line 119
    .local v2, "component":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager$1;->this$0:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    iget-object v11, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager$1;->this$0:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    invoke-static {v11}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->-get0(Lcom/android/incallui/callwidget/SomcCallWidgetManager;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-static {v10, v11, v2}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->-wrap1(Lcom/android/incallui/callwidget/SomcCallWidgetManager;Ljava/util/List;Ljava/lang/String;)Lcom/android/incallui/callwidget/ISomcCallWidget;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/callwidget/SomcCallWidget;

    .line 120
    .restart local v6    # "widget":Lcom/android/incallui/callwidget/SomcCallWidget;
    if-eqz v6, :cond_5

    .line 121
    iget-object v10, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager$1;->this$0:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    invoke-static {v10, v6, v5}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->-wrap0(Lcom/android/incallui/callwidget/SomcCallWidgetManager;Lcom/android/incallui/callwidget/SomcCallWidget;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 122
    .restart local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_6

    .line 123
    invoke-virtual {v6, v4}, Lcom/android/incallui/callwidget/SomcCallWidget;->setResolveInfo(Landroid/content/pm/ResolveInfo;)V

    .line 118
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_5
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 126
    .restart local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_6
    iget-object v10, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager$1;->this$0:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    invoke-static {v10}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->-get0(Lcom/android/incallui/callwidget/SomcCallWidgetManager;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 131
    .end local v2    # "component":Ljava/lang/String;
    .end local v3    # "components":[Ljava/lang/String;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "widget":Lcom/android/incallui/callwidget/SomcCallWidget;
    :cond_7
    const-string/jumbo v8, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 132
    iget-object v8, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager$1;->this$0:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    invoke-static {v8}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->-wrap5(Lcom/android/incallui/callwidget/SomcCallWidgetManager;)V

    goto/16 :goto_0
.end method
