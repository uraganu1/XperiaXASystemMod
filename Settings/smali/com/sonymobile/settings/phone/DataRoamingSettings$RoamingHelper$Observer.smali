.class public Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;
.super Landroid/database/ContentObserver;
.source "DataRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Observer"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$1"    # Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 729
    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    .line 730
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 727
    const-string/jumbo v0, "DataRoamingSettings.RoamingHelper.Observer"

    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->TAG:Ljava/lang/String;

    .line 729
    return-void
.end method

.method private final getValueFromUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 786
    const/4 v3, 0x0

    .line 787
    .local v3, "value":Ljava/lang/Integer;
    const/4 v2, 0x0

    .line 789
    .local v2, "stringValue":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 790
    .local v2, "stringValue":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 800
    .end local v2    # "stringValue":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-object v3

    .line 793
    .restart local v3    # "value":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 794
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    invoke-static {v4}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->-get1(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 795
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .local v3, "value":Ljava/lang/Integer;
    goto :goto_0

    .line 796
    .local v3, "value":Ljava/lang/Integer;
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    invoke-static {v4}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->-get0(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 797
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .local v3, "value":Ljava/lang/Integer;
    goto :goto_0

    .line 791
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .local v3, "value":Ljava/lang/Integer;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 11
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v10, 0x0

    .line 749
    const-string/jumbo v7, "DataRoamingSettings.RoamingHelper.Observer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onChange: uri="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    if-eqz p2, :cond_1

    iget-object v7, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    invoke-static {v7}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->-get2(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 751
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 752
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 753
    .local v3, "size":I
    if-lez v3, :cond_1

    .line 754
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 757
    .local v1, "key":Ljava/lang/String;
    add-int/lit8 v7, v3, -0x1

    :try_start_0
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 761
    .local v4, "subId":J
    :goto_0
    iget-object v7, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    iget-object v7, v7, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v7}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap4(Lcom/sonymobile/settings/phone/DataRoamingSettings;)I

    move-result v7

    int-to-long v8, v7

    cmp-long v7, v4, v8

    if-nez v7, :cond_1

    .line 762
    invoke-direct {p0, p2, v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->getValueFromUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 763
    .local v6, "value":Ljava/lang/Integer;
    if-nez v6, :cond_0

    .line 766
    iget-object v7, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    const/4 v8, 0x1

    invoke-static {v7, v1, v4, v5, v8}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->-wrap1(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Ljava/lang/String;JI)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 779
    :cond_0
    iget-object v7, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    iget-object v7, v7, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v7, v1, v8}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap14(Lcom/sonymobile/settings/phone/DataRoamingSettings;Ljava/lang/String;I)V

    .line 748
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "size":I
    .end local v4    # "subId":J
    .end local v6    # "value":Ljava/lang/Integer;
    :cond_1
    return-void

    .line 758
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "size":I
    :catch_0
    move-exception v0

    .line 759
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v7

    int-to-long v4, v7

    .restart local v4    # "subId":J
    goto :goto_0
.end method

.method public register()V
    .locals 3

    .prologue
    .line 735
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    iget-object v0, v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap0(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    invoke-static {v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->-get3(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 733
    return-void
.end method

.method public unRegister()V
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;->this$1:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;

    iget-object v0, v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap0(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 738
    return-void
.end method
