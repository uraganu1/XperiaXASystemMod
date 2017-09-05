.class public Lcom/sonymobile/keyguard/googleanalytics/FingerprintGoogleAnalyticsReporter;
.super Landroid/os/AsyncTask;
.source "FingerprintGoogleAnalyticsReporter.java"

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

.field private final mGoogleAnalyticsUserClassifier:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;Landroid/os/UserManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "googleAnalyticsUserClassifier"    # Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;
    .param p3, "userManager"    # Landroid/os/UserManager;

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/sonymobile/keyguard/googleanalytics/FingerprintGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/sonymobile/keyguard/googleanalytics/FingerprintGoogleAnalyticsReporter;->mGoogleAnalyticsUserClassifier:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;

    .line 61
    iput-object p3, p0, Lcom/sonymobile/keyguard/googleanalytics/FingerprintGoogleAnalyticsReporter;->mUserManager:Landroid/os/UserManager;

    .line 58
    return-void
.end method

.method private getFingerprintCountForAllUsers()Ljava/util/ArrayList;
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
    .line 94
    iget-object v5, p0, Lcom/sonymobile/keyguard/googleanalytics/FingerprintGoogleAnalyticsReporter;->mUserManager:Landroid/os/UserManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 96
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v1, "fingerPrintCounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;>;"
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

    .line 99
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v2}, Lcom/sonymobile/keyguard/googleanalytics/FingerprintGoogleAnalyticsReporter;->getFingerprintCountForUser(Landroid/content/pm/UserInfo;)Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;

    move-result-object v0

    .line 100
    .local v0, "data":Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    .end local v0    # "data":Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    return-object v1
.end method

.method private getFingerprintCountForUser(Landroid/content/pm/UserInfo;)Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    .locals 8
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v1, 0x0

    .line 118
    if-nez p1, :cond_0

    .line 119
    return-object v1

    .line 122
    :cond_0
    const/4 v0, 0x0

    .line 123
    .local v0, "userInformation":Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    iget-object v1, p0, Lcom/sonymobile/keyguard/googleanalytics/FingerprintGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    .line 126
    .local v7, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    if-eqz v7, :cond_1

    .line 127
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFingerprintCount(I)I

    move-result v6

    .line 128
    .local v6, "fingerPrintCount":I
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    int-to-long v4, v1

    .line 129
    .local v4, "isActive":J
    iget-object v1, p0, Lcom/sonymobile/keyguard/googleanalytics/FingerprintGoogleAnalyticsReporter;->mGoogleAnalyticsUserClassifier:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;

    invoke-virtual {v1, p1}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;->getUserType(Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "userType":Ljava/lang/String;
    const/4 v1, -0x1

    if-ne v6, v1, :cond_3

    .line 132
    const/4 v0, 0x0

    .line 141
    .end local v0    # "userInformation":Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    .end local v3    # "userType":Ljava/lang/String;
    .end local v4    # "isActive":J
    .end local v6    # "fingerPrintCount":I
    :cond_1
    :goto_1
    return-object v0

    .line 128
    .restart local v0    # "userInformation":Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    .restart local v6    # "fingerPrintCount":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 135
    .restart local v3    # "userType":Ljava/lang/String;
    .restart local v4    # "isActive":J
    :cond_3
    new-instance v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;

    .line 136
    .end local v0    # "userInformation":Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    const-string/jumbo v1, "FingerprintCount"

    .line 137
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .local v0, "userInformation":Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    goto :goto_1
.end method

.method private reportFingerprintCount()V
    .locals 10

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/sonymobile/keyguard/googleanalytics/FingerprintGoogleAnalyticsReporter;->getFingerprintCountForAllUsers()Ljava/util/ArrayList;

    move-result-object v9

    .line 81
    .local v9, "fingerprintCounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;>;"
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

    .line 82
    .local v0, "event":Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    iget-object v1, p0, Lcom/sonymobile/keyguard/googleanalytics/FingerprintGoogleAnalyticsReporter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "UA-47011422-17"

    .line 83
    iget-object v3, v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;->mCategory:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;->mAction:Ljava/lang/String;

    iget-object v5, v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;->mLabel:Ljava/lang/String;

    iget-wide v6, v0, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;->mValue:J

    .line 82
    invoke-static/range {v1 .. v7}, Lcom/sonymobile/ga/GAManager;->pushEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 78
    .end local v0    # "event":Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsProxyEventData;
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 70
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/keyguard/googleanalytics/FingerprintGoogleAnalyticsReporter;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sonymobile/keyguard/googleanalytics/FingerprintGoogleAnalyticsReporter;->reportFingerprintCount()V

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public reportDataToGoogle()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/sonymobile/keyguard/googleanalytics/FingerprintGoogleAnalyticsReporter;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    return-void
.end method
