.class public Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsUserClassifier;
.super Ljava/lang/Object;
.source "GoogleAnalyticsUserClassifier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserType(Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 27
    if-nez p1, :cond_0

    .line 28
    sget-object v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->Unknown:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    iget-object v1, v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->label:Ljava/lang/String;

    return-object v1

    .line 32
    :cond_0
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_1

    .line 33
    sget-object v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->Owner:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    iget-object v0, v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->label:Ljava/lang/String;

    .line 51
    .local v0, "userType":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 52
    const-string/jumbo v2, "_"

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 53
    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 34
    .end local v0    # "userType":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 36
    sget-object v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->PrimaryUser:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    .line 35
    iget-object v0, v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->label:Ljava/lang/String;

    .restart local v0    # "userType":Ljava/lang/String;
    goto :goto_0

    .line 37
    .end local v0    # "userType":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 39
    sget-object v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->AdminUser:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    .line 38
    iget-object v0, v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->label:Ljava/lang/String;

    .restart local v0    # "userType":Ljava/lang/String;
    goto :goto_0

    .line 40
    .end local v0    # "userType":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 41
    sget-object v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->RestrictedUser:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    iget-object v0, v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->label:Ljava/lang/String;

    .restart local v0    # "userType":Ljava/lang/String;
    goto :goto_0

    .line 43
    .end local v0    # "userType":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 45
    sget-object v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->GuestUser:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    .line 44
    iget-object v0, v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->label:Ljava/lang/String;

    .restart local v0    # "userType":Ljava/lang/String;
    goto :goto_0

    .line 47
    .end local v0    # "userType":Ljava/lang/String;
    :cond_5
    sget-object v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->SecondaryUser:Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;

    iget-object v0, v1, Lcom/sonymobile/keyguard/googleanalytics/GoogleAnalyticsPeriodicEventConstants$UserType;->label:Ljava/lang/String;

    .restart local v0    # "userType":Ljava/lang/String;
    goto :goto_0
.end method
