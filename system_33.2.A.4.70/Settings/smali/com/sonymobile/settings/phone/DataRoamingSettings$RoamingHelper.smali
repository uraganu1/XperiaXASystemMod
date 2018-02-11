.class Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;
.super Ljava/lang/Object;
.source "DataRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/phone/DataRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoamingHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;
    }
.end annotation


# instance fields
.field private final FALSE:Ljava/lang/String;

.field private final TRUE:Ljava/lang/String;

.field private final mAuthority:Ljava/lang/String;

.field private final mBaseUri:Landroid/net/Uri;

.field public mObserver:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;

.field final synthetic this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->FALSE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->TRUE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mBaseUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Ljava/lang/String;JZ)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "subId"    # J
    .param p4, "defaultValue"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->query(Ljava/lang/String;JZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Ljava/lang/String;JI)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "subId"    # J
    .param p4, "defaultValue"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->query(Ljava/lang/String;JI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Ljava/lang/String;JZ)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "subId"    # J
    .param p4, "value"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->update(Ljava/lang/String;JZ)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Ljava/lang/String;JI)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "subId"    # J
    .param p4, "value"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->update(Ljava/lang/String;JI)I

    move-result v0

    return v0
.end method

.method private constructor <init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sonymobile/settings/phone/DataRoamingSettings;

    .prologue
    .line 659
    iput-object p1, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    const-string/jumbo v0, "content://com.sonymobile.phone.roaming"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mBaseUri:Landroid/net/Uri;

    .line 670
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mAuthority:Ljava/lang/String;

    .line 673
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->TRUE:Ljava/lang/String;

    .line 674
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->FALSE:Ljava/lang/String;

    .line 678
    new-instance v0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;-><init>(Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mObserver:Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper$Observer;

    .line 659
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/settings/phone/DataRoamingSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;-><init>(Lcom/sonymobile/settings/phone/DataRoamingSettings;)V

    return-void
.end method

.method private query(Ljava/lang/String;JI)I
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "subId"    # J
    .param p4, "defaultValue"    # I

    .prologue
    .line 682
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mBaseUri:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/subId/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 684
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 686
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap0(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 687
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p4

    .line 694
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 696
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return p4

    .line 691
    :catch_0
    move-exception v7

    .line 692
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string/jumbo v0, "DataRoamingSettings.RoamingHelper"

    const-string/jumbo v2, "queryInt:"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 694
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 693
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    .line 694
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 693
    :cond_2
    throw v0
.end method

.method private query(Ljava/lang/String;JZ)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "subId"    # J
    .param p4, "defaultValue"    # Z

    .prologue
    const/4 v1, 0x0

    .line 703
    if-eqz p4, :cond_1

    const/4 v0, 0x1

    .line 704
    .local v0, "value":I
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->query(Ljava/lang/String;JI)I

    move-result v0

    .line 705
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 703
    .end local v0    # "value":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "value":I
    goto :goto_0
.end method

.method private update(Ljava/lang/String;JI)I
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "subId"    # J
    .param p4, "value"    # I

    .prologue
    const/4 v5, 0x0

    .line 710
    iget-object v2, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->mBaseUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/subId/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 713
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 714
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 715
    iget-object v2, p0, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->this$0:Lcom/sonymobile/settings/phone/DataRoamingSettings;

    invoke-static {v2}, Lcom/sonymobile/settings/phone/DataRoamingSettings;->-wrap0(Lcom/sonymobile/settings/phone/DataRoamingSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private update(Ljava/lang/String;JZ)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "subId"    # J
    .param p4, "value"    # Z

    .prologue
    .line 722
    if-eqz p4, :cond_0

    const/4 v0, 0x1

    .line 723
    .local v0, "intValue":I
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/settings/phone/DataRoamingSettings$RoamingHelper;->update(Ljava/lang/String;JI)I

    move-result v1

    return v1

    .line 722
    .end local v0    # "intValue":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "intValue":I
    goto :goto_0
.end method
