.class public Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;
.super Landroid/os/AsyncTask;
.source "LockscreenTypeGoogleAnalyticsReporter.java"

# interfaces
.implements Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsReporter;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGoogleAnalyticsLockscreenClassifier:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;

.field private final mGoogleAnalyticsUserClassifier:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;Landroid/os/UserManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "googleAnalyticsLockscreenClassifier"    # Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;
    .param p3, "googleAnalyticsUserClassifier"    # Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;
    .param p4, "userManager"    # Landroid/os/UserManager;

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mGoogleAnalyticsLockscreenClassifier:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;

    .line 69
    iput-object p3, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mGoogleAnalyticsUserClassifier:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;

    .line 70
    iput-object p4, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mUserManager:Landroid/os/UserManager;

    .line 66
    return-void
.end method

.method private getSelectedLockScreenTypeForAllUsers()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v5, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mUserManager:Landroid/os/UserManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 106
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v1, "lockscreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "userInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 109
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v2}, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->getSelectedLockscreenForUser(Landroid/content/pm/UserInfo;)Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;

    move-result-object v0

    .line 110
    .local v0, "data":Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    .end local v0    # "data":Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    return-object v1
.end method

.method private getSelectedLockscreenForUser(Landroid/content/pm/UserInfo;)Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    .locals 7
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v1, 0x0

    .line 129
    if-nez p1, :cond_0

    .line 130
    return-object v1

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mGoogleAnalyticsLockscreenClassifier:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;

    .line 134
    iget v6, p1, Landroid/content/pm/UserInfo;->id:I

    .line 133
    invoke-virtual {v1, v6}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsLockscreenClassifier;->getHumanReadableLockscreenNameForUser(I)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "humanReadableLockscreenName":Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    iget v6, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v6, :cond_1

    const/4 v1, 0x1

    :goto_0
    int-to-long v4, v1

    .line 136
    .local v4, "isActive":J
    iget-object v1, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mGoogleAnalyticsUserClassifier:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;

    invoke-virtual {v1, p1}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;->getUserType(Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "userType":Ljava/lang/String;
    new-instance v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;

    .line 139
    const-string/jumbo v1, "LockscreenType"

    .line 138
    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 141
    .local v0, "userInformation":Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    return-object v0

    .line 135
    .end local v0    # "userInformation":Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    .end local v3    # "userType":Ljava/lang/String;
    .end local v4    # "isActive":J
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reportLockscreens()V
    .locals 10

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->getSelectedLockScreenTypeForAllUsers()Ljava/util/ArrayList;

    move-result-object v9

    .line 90
    .local v9, "selectedLockscreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "event$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;

    .line 91
    .local v0, "event":Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    iget-object v1, p0, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "UA-47011422-17"

    .line 92
    iget-object v3, v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;->mCategory:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;->mAction:Ljava/lang/String;

    iget-object v5, v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;->mLabel:Ljava/lang/String;

    iget-wide v6, v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;->mValue:J

    .line 91
    invoke-static/range {v1 .. v7}, Lcom/sonymobile/ga/GAManager;->pushEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 87
    .end local v0    # "event":Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 79
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->reportLockscreens()V

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public reportDataToGoogle()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/googleanalytics/LockscreenTypeGoogleAnalyticsReporter;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    return-void
.end method
