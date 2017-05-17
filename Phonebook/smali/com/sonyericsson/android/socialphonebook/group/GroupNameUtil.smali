.class public Lcom/sonyericsson/android/socialphonebook/group/GroupNameUtil;
.super Ljava/lang/Object;
.source "GroupNameUtil.java"


# static fields
.field private static final LOCAL_READONLY_GROUP_COLLEAGUES:Ljava/lang/String; = "Colleagues"

.field private static final LOCAL_READONLY_GROUP_COLLEAGUES_RES_ID:Ljava/lang/String; = "default_group_title_colleagues"

.field private static final LOCAL_READONLY_GROUP_FAMILY:Ljava/lang/String; = "Family"

.field private static final LOCAL_READONLY_GROUP_FAMILY_RES_ID:Ljava/lang/String; = "default_group_title_family"

.field private static final LOCAL_READONLY_GROUP_FRIENDS:Ljava/lang/String; = "Friends"

.field private static final LOCAL_READONLY_GROUP_FRIENDS_RES_ID:Ljava/lang/String; = "default_group_title_friends"

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/sonyericsson/android/socialphonebook/group/GroupNameUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/group/GroupNameUtil;->TAG:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGroupTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 42
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 45
    .local v2, "resources":Landroid/content/res/Resources;
    const/4 v1, -0x1

    .line 46
    .local v1, "groupTitleRes":I
    const-string/jumbo v4, "Colleagues"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    const-string/jumbo v4, "default_group_title_colleagues"

    .line 48
    const-string/jumbo v5, "string"

    .line 47
    invoke-virtual {v2, v4, v5, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 58
    :cond_0
    :goto_0
    if-gtz v1, :cond_3

    .line 59
    return-object p1

    .line 49
    :cond_1
    const-string/jumbo v4, "Family"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 50
    const-string/jumbo v4, "default_group_title_family"

    .line 51
    const-string/jumbo v5, "string"

    .line 50
    invoke-virtual {v2, v4, v5, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 52
    :cond_2
    const-string/jumbo v4, "Friends"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    const-string/jumbo v4, "default_group_title_friends"

    const-string/jumbo v5, "string"

    .line 53
    invoke-virtual {v2, v4, v5, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 62
    :cond_3
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "translatedTitle":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_4

    .line 65
    return-object v3

    .line 67
    :cond_4
    return-object p1

    .line 69
    .end local v1    # "groupTitleRes":I
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v3    # "translatedTitle":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/group/GroupNameUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Resources for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " package could not be loaded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-object p1
.end method
