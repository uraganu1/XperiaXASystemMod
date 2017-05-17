.class public Lcom/sonymobile/multiuser/MultiUserUtils;
.super Ljava/lang/Object;
.source "MultiUserUtils.java"


# static fields
.field private static final CONVERSATION_LIST_STRING:Ljava/lang/String;

.field private static final MULTI_USER_UTIL_SERVICE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/multiuser/MultiUserUtils;->CONVERSATION_LIST_STRING:Ljava/lang/String;

    .line 29
    const-class v0, Lcom/sonymobile/multiuser/MultiUserUtilService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/multiuser/MultiUserUtils;->MULTI_USER_UTIL_SERVICE:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableApp(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 69
    .local v7, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 70
    const/16 v9, 0xf

    .line 69
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 72
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-static {v7, v8}, Lcom/sonymobile/multiuser/MultiUserUtils;->disableComponents(Landroid/content/pm/PackageManager;[Landroid/content/pm/ComponentInfo;)V

    .line 73
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    invoke-static {v7, v8}, Lcom/sonymobile/multiuser/MultiUserUtils;->disableComponents(Landroid/content/pm/PackageManager;[Landroid/content/pm/ComponentInfo;)V

    .line 74
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    invoke-static {v7, v8}, Lcom/sonymobile/multiuser/MultiUserUtils;->disableComponents(Landroid/content/pm/PackageManager;[Landroid/content/pm/ComponentInfo;)V

    .line 75
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    invoke-static {v7, v8}, Lcom/sonymobile/multiuser/MultiUserUtils;->disableComponents(Landroid/content/pm/PackageManager;[Landroid/content/pm/ComponentInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    :try_start_1
    const-string/jumbo v8, "activity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 80
    check-cast v2, Landroid/app/ActivityManager;

    .line 82
    .local v2, "am":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 83
    .local v3, "appTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppTask;>;"
    if-nez v3, :cond_0

    .line 84
    return-void

    .line 76
    .end local v2    # "am":Landroid/app/ActivityManager;
    .end local v3    # "appTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppTask;>;"
    :catch_0
    move-exception v4

    .line 77
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "NameNotFoundException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "am":Landroid/app/ActivityManager;
    .restart local v3    # "appTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppTask;>;"
    :cond_0
    :try_start_2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "a$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    .line 87
    .local v0, "a":Landroid/app/ActivityManager$AppTask;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager$AppTask;->setExcludeFromRecents(Z)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 89
    .end local v0    # "a":Landroid/app/ActivityManager$AppTask;
    .end local v1    # "a$iterator":Ljava/util/Iterator;
    .end local v2    # "am":Landroid/app/ActivityManager;
    .end local v3    # "appTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppTask;>;"
    :catch_1
    move-exception v5

    .line 90
    .local v5, "e":Ljava/lang/SecurityException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SecurityException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 65
    .end local v5    # "e":Ljava/lang/SecurityException;
    :cond_1
    return-void
.end method

.method private static disableComponents(Landroid/content/pm/PackageManager;[Landroid/content/pm/ComponentInfo;)V
    .locals 7
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "components"    # [Landroid/content/pm/ComponentInfo;

    .prologue
    const/4 v2, 0x1

    .line 33
    if-nez p1, :cond_0

    .line 34
    return-void

    .line 36
    :cond_0
    const/4 v1, 0x0

    array-length v4, p1

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v0, p1, v3

    .line 37
    .local v0, "ci":Landroid/content/pm/ComponentInfo;
    iget-object v1, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    sget-object v5, Lcom/sonymobile/multiuser/MultiUserUtils;->CONVERSATION_LIST_STRING:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 38
    sget-object v5, Lcom/sonymobile/multiuser/MultiUserUtils;->MULTI_USER_UTIL_SERVICE:Ljava/lang/String;

    .line 37
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_1

    .line 39
    new-instance v1, Landroid/content/ComponentName;

    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const/4 v5, 0x2

    .line 39
    invoke-virtual {p0, v1, v5, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 36
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 37
    goto :goto_1

    .line 31
    .end local v0    # "ci":Landroid/content/pm/ComponentInfo;
    :cond_3
    return-void
.end method

.method private static enableApp(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 98
    .local v7, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 99
    const/16 v9, 0xf

    .line 98
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 101
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-static {v7, v8}, Lcom/sonymobile/multiuser/MultiUserUtils;->enableComponents(Landroid/content/pm/PackageManager;[Landroid/content/pm/ComponentInfo;)V

    .line 102
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    invoke-static {v7, v8}, Lcom/sonymobile/multiuser/MultiUserUtils;->enableComponents(Landroid/content/pm/PackageManager;[Landroid/content/pm/ComponentInfo;)V

    .line 103
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    invoke-static {v7, v8}, Lcom/sonymobile/multiuser/MultiUserUtils;->enableComponents(Landroid/content/pm/PackageManager;[Landroid/content/pm/ComponentInfo;)V

    .line 104
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    invoke-static {v7, v8}, Lcom/sonymobile/multiuser/MultiUserUtils;->enableComponents(Landroid/content/pm/PackageManager;[Landroid/content/pm/ComponentInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    :try_start_1
    const-string/jumbo v8, "activity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 109
    check-cast v2, Landroid/app/ActivityManager;

    .line 111
    .local v2, "am":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 112
    .local v3, "appTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppTask;>;"
    if-nez v3, :cond_0

    .line 113
    return-void

    .line 105
    .end local v2    # "am":Landroid/app/ActivityManager;
    .end local v3    # "appTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppTask;>;"
    :catch_0
    move-exception v4

    .line 106
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "NameNotFoundException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "am":Landroid/app/ActivityManager;
    .restart local v3    # "appTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppTask;>;"
    :cond_0
    :try_start_2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "a$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    .line 116
    .local v0, "a":Landroid/app/ActivityManager$AppTask;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager$AppTask;->setExcludeFromRecents(Z)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 118
    .end local v0    # "a":Landroid/app/ActivityManager$AppTask;
    .end local v1    # "a$iterator":Ljava/util/Iterator;
    .end local v2    # "am":Landroid/app/ActivityManager;
    .end local v3    # "appTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppTask;>;"
    :catch_1
    move-exception v5

    .line 119
    .local v5, "e":Ljava/lang/SecurityException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SecurityException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 94
    .end local v5    # "e":Ljava/lang/SecurityException;
    :cond_1
    return-void
.end method

.method private static enableComponents(Landroid/content/pm/PackageManager;[Landroid/content/pm/ComponentInfo;)V
    .locals 7
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "components"    # [Landroid/content/pm/ComponentInfo;

    .prologue
    const/4 v2, 0x1

    .line 48
    if-nez p1, :cond_0

    .line 49
    return-void

    .line 51
    :cond_0
    const/4 v1, 0x0

    array-length v4, p1

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v0, p1, v3

    .line 52
    .local v0, "ci":Landroid/content/pm/ComponentInfo;
    iget-object v1, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    sget-object v5, Lcom/sonymobile/multiuser/MultiUserUtils;->CONVERSATION_LIST_STRING:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 53
    sget-object v5, Lcom/sonymobile/multiuser/MultiUserUtils;->MULTI_USER_UTIL_SERVICE:Ljava/lang/String;

    .line 52
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_1

    .line 54
    new-instance v1, Landroid/content/ComponentName;

    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 51
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 52
    goto :goto_1

    .line 46
    .end local v0    # "ci":Landroid/content/pm/ComponentInfo;
    :cond_3
    return-void
.end method

.method public static isUserAllowedToUseMessaging()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    invoke-static {}, Lcom/sonymobile/multiuser/MultiUserUtils;->isUserOwner()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 133
    return v5

    .line 135
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 136
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v6, "user"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 137
    .local v3, "userManager":Landroid/os/UserManager;
    if-nez v3, :cond_1

    .line 138
    return v4

    .line 140
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v2

    .line 141
    .local v2, "userBundle":Landroid/os/Bundle;
    if-nez v2, :cond_2

    .line 142
    return v4

    .line 144
    :cond_2
    const-string/jumbo v6, "no_sms"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 145
    .local v1, "disallow":Z
    if-nez v1, :cond_3

    .line 146
    invoke-static {v0}, Lcom/sonymobile/multiuser/MultiUserUtils;->enableApp(Landroid/content/Context;)V

    .line 148
    :cond_3
    if-eqz v1, :cond_4

    :goto_0
    return v4

    :cond_4
    move v4, v5

    goto :goto_0
.end method

.method public static isUserOwner()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 159
    .local v0, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
