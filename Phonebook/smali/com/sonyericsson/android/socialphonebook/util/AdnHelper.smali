.class public Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
.super Ljava/lang/Object;
.source "AdnHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;
    }
.end annotation


# static fields
.field private static final ADN_AFTER_VALUE:Ljava/lang/String; = "adnAfterValue"

.field private static final ADN_BEFORE_VALUE:Ljava/lang/String; = "adnBeforeValue"

.field public static final ADN_CAPACITY_URI:Landroid/net/Uri;

.field private static final ADN_COLUMN_ANRS:Ljava/lang/String; = "anrs"

.field private static final ADN_COLUMN_EMAILS:Ljava/lang/String; = "emails"

.field private static final ADN_COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final ADN_COLUMN_INDEX:I = 0x1

.field private static final ADN_COLUMN_NAME:Ljava/lang/String; = "name"

.field private static final ADN_COLUMN_NUMBER:Ljava/lang/String; = "number"

.field public static final ADN_SUB1_CAPACITY_URI:Landroid/net/Uri;

.field public static final ADN_SUB2_CAPACITY_URI:Landroid/net/Uri;

.field public static final ANRS_KEY:Ljava/lang/String; = "anr"

.field private static final ANR_AFTER_VALUE:Ljava/lang/String; = "anrAfterValue"

.field private static final ANR_BEFORE_VALUE:Ljava/lang/String; = "anrBeforeValue"

.field private static final ANR_COLUMN_INDEX:I = 0x3

.field public static final CHECK_SIM_STATE_BY_CREATE:I = 0x3

.field public static final CHECK_SIM_STATE_BY_DELETE:I = 0x1

.field public static final CHECK_SIM_STATE_BY_EDIT:I = 0x0

.field public static final CHECK_SIM_STATE_BY_SAVE:I = 0x2

.field public static final CSIM_TYPE:I = 0x3

.field public static final EMAILS_KEY:Ljava/lang/String; = "emails"

.field private static final EMAIL_AFTER_VALUE:Ljava/lang/String; = "emailAfterValue"

.field private static final EMAIL_BEFORE_VALUE:Ljava/lang/String; = "emailBeforeValue"

.field private static final EMAIL_COLUMN_INDEX:I = 0x2

.field public static final ERR_PBR_UNAVAILABLE:I = -0x1

.field public static final EXTRA_PBR_INDEX:Ljava/lang/String; = "pbrIndex"

.field private static final LENGTH_ROW_INDEX:I = 0x0

.field private static final NAME_AFTER_VALUE:Ljava/lang/String; = "nameAfterValue"

.field private static final NAME_BEFORE_VALUE:Ljava/lang/String; = "nameBeforeValue"

.field private static final NAME_COLUMN:Ljava/lang/String; = "data2"

.field public static final NEWANRS_KEY:Ljava/lang/String; = "newAnr"

.field public static final NEWEMAILS_KEY:Ljava/lang/String; = "newEmails"

.field public static final NEWNUMBER_KEY:Ljava/lang/String; = "newNumber"

.field public static final NEWTAG_KEY:Ljava/lang/String; = "newTag"

.field public static final NUMBER_KEY:Ljava/lang/String; = "number"

.field private static final REMAIN_CAPACITY_ROW_INDEX:I = 0x1

.field public static final RUIM_TYPE:I = 0x2

.field public static final SIM_TYPE:I = 0x0

.field private static final SUB_ID:Ljava/lang/String; = "/subId/"

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_COLUMN_INDEX:I = 0x0

.field public static final TAG_KEY:Ljava/lang/String; = "tag"

.field private static final TOTAL_CAPACITY_ROW_INDEX:I = 0x2

.field public static final TOTAL_COLUMN_NUMBER:I = 0x4

.field public static final TOTAL_ROW_NUMBER:I = 0x3

.field public static final UNKNOWN_TYPE:I = -0x1

.field public static final USIM_TYPE:I = 0x1

.field private static sInstanceSub1:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstanceSub2:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static sSimulator:Z


# instance fields
.field private mCapacityUri:Landroid/net/Uri;

.field private mPbrInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSlotId:I

.field private mUiccType:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 54
    const-class v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->TAG:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "content://icc/capacity/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->ADN_CAPACITY_URI:Landroid/net/Uri;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->ADN_CAPACITY_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/subId/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getSubId(I)I

    move-result v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->ADN_SUB1_CAPACITY_URI:Landroid/net/Uri;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->ADN_CAPACITY_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/subId/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getSubId(I)I

    move-result v1

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->ADN_SUB2_CAPACITY_URI:Landroid/net/Uri;

    .line 86
    sput-boolean v2, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->sSimulator:Z

    .line 89
    const-string/jumbo v0, "goldfish"

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->sSimulator:Z

    .line 112
    sput-object v3, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->sInstanceSub1:Ljava/lang/ref/WeakReference;

    .line 114
    sput-object v3, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->sInstanceSub2:Ljava/lang/ref/WeakReference;

    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mSlotId:I

    .line 227
    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->getIccType(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mUiccType:I

    .line 228
    iput p2, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mSlotId:I

    .line 229
    packed-switch p2, :pswitch_data_0

    .line 237
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->ADN_CAPACITY_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mCapacityUri:Landroid/net/Uri;

    .line 241
    :goto_0
    invoke-static {p1, p2}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->isSimAbsent(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    return-void

    .line 231
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->ADN_SUB2_CAPACITY_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mCapacityUri:Landroid/net/Uri;

    goto :goto_0

    .line 234
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->ADN_SUB1_CAPACITY_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mCapacityUri:Landroid/net/Uri;

    goto :goto_0

    .line 244
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->loadMTKPbrInfo(Landroid/content/Context;)V

    .line 226
    return-void

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static containAccountType(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 653
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 654
    .local v1, "am":Landroid/accounts/AccountManager;
    invoke-virtual {v1, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 656
    .local v0, "ac":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-eqz v2, :cond_0

    .line 657
    const/4 v2, 0x1

    return v2

    .line 659
    :cond_0
    return v3
.end method

.method public static containUnicode(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 625
    const/4 v1, 0x0

    .line 626
    .local v1, "result":Z
    if-eqz p0, :cond_0

    .line 628
    :try_start_0
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eq v2, v3, :cond_1

    const/4 v1, 0x1

    .line 634
    :cond_0
    :goto_0
    return v1

    .line 628
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to encode: charset = UTF-8"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static containsAdnAccountType(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 641
    if-nez p0, :cond_0

    .line 642
    const/4 v0, 0x0

    return v0

    .line 644
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateCheckerSingleton;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/util/DualSimStateChecker;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 645
    const-string/jumbo v0, "com.sonyericsson.adnsub1contacts"

    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->containAccountType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 646
    const-string/jumbo v0, "com.sonyericsson.adnsub2contacts"

    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->containAccountType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 645
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 648
    :cond_2
    const-string/jumbo v0, "com.sonyericsson.localcontacts"

    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->containAccountType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private convertEmailToName(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pbrIndex"    # I
    .param p2, "emailValue"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 889
    if-nez p2, :cond_0

    .line 890
    return-object v2

    .line 892
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getNameLength(I)I

    move-result v1

    .line 893
    .local v1, "maxNameLength":I
    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->containUnicode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 894
    div-int/lit8 v2, v1, 0x2

    add-int/lit8 v1, v2, -0x1

    .line 896
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 897
    .local v0, "emailLength":I
    if-ge v1, v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "emailValue":Ljava/lang/String;
    :cond_2
    return-object p2
.end method

.method public static getAdnPhotoId(Ljava/lang/String;)J
    .locals 2
    .param p0, "accountType"    # Ljava/lang/String;

    .prologue
    .line 695
    const-string/jumbo v0, "com.sonyericsson.adncontacts"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    const-string/jumbo v0, "com.sonyericsson.adnsub1contacts"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 695
    if-nez v0, :cond_0

    .line 697
    const-string/jumbo v0, "com.sonyericsson.adnsub2contacts"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 695
    if-eqz v0, :cond_1

    .line 698
    :cond_0
    const-wide v0, 0x7ffffffffffffffdL

    return-wide v0

    .line 701
    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getAvailableSimPbr()I
    .locals 3

    .prologue
    .line 339
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mPbrInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 340
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mPbrInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;

    .line 341
    .local v1, "pbrInfo":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->getPbrRemainCapacity()I

    move-result v2

    if-lez v2, :cond_0

    .line 342
    return v0

    .line 339
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    .end local v1    # "pbrInfo":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private getAvailableUsimPbr()I
    .locals 9

    .prologue
    const/4 v3, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 350
    const/4 v0, -0x1

    .line 351
    .local v0, "firstCapablePbr":I
    const/4 v1, 0x0

    .line 352
    .local v1, "i":I
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mPbrInfos.size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mPbrInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mPbrInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 354
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mPbrInfos:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;

    .line 355
    .local v2, "pbrInfo":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->getPbrRemainCapacity()I

    move-result v4

    if-lez v4, :cond_1

    .line 356
    if-ne v0, v3, :cond_0

    .line 357
    move v0, v1

    .line 359
    :cond_0
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pbrInfo : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    aget-object v6, v6, v7

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 360
    iget-object v6, v2, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    aget-object v6, v6, v7

    aget v6, v6, v7

    .line 359
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v4, v2, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    aget-object v4, v4, v7

    aget v4, v4, v8

    if-lez v4, :cond_1

    .line 362
    iget-object v4, v2, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    aget-object v4, v4, v7

    aget v4, v4, v7

    if-lez v4, :cond_1

    .line 363
    return v1

    .line 353
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    .end local v2    # "pbrInfo":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;
    :cond_2
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAvailableUsimPbr - mUiccType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mUiccType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    if-ne v0, v3, :cond_3

    move v0, v3

    .end local v0    # "firstCapablePbr":I
    :cond_3
    return v0
.end method

.method private getIccProviderValues(Lcom/android/contacts/common/model/RawContactDelta;)Ljava/util/Map;
    .locals 21
    .param p1, "entityDelta"    # Lcom/android/contacts/common/model/RawContactDelta;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/RawContactDelta;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 822
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 825
    .local v18, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v19, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 826
    .local v14, "nameDelta":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-nez v14, :cond_0

    .line 827
    new-instance v19, Ljava/lang/RuntimeException;

    const-string/jumbo v20, "Name mimetype entries accessed uninitialized."

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 829
    :cond_0
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/contacts/common/model/ValuesDelta;

    .line 830
    .local v15, "nameValues":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v15}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v12

    .line 831
    .local v12, "nameAfter":Landroid/content/ContentValues;
    invoke-virtual {v15}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v13

    .line 832
    .local v13, "nameBefore":Landroid/content/ContentValues;
    if-eqz v12, :cond_1

    .line 833
    const-string/jumbo v19, "nameAfterValue"

    const-string/jumbo v20, "data2"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    :cond_1
    if-eqz v13, :cond_2

    .line 836
    const-string/jumbo v19, "nameBeforeValue"

    const-string/jumbo v20, "data2"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    :cond_2
    const-string/jumbo v19, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 840
    .local v16, "phoneDelta":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-nez v16, :cond_3

    .line 841
    new-instance v19, Ljava/lang/RuntimeException;

    const-string/jumbo v20, "Phone mimetype entries accessed uninitialized."

    invoke-direct/range {v19 .. v20}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 843
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getUiccType()I

    move-result v17

    .line 845
    .local v17, "uiccType":I
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/ValuesDelta;

    .line 846
    .local v4, "adnValues":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v4}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v2

    .line 847
    .local v2, "adnAfter":Landroid/content/ContentValues;
    invoke-virtual {v4}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v3

    .line 848
    .local v3, "adnBefore":Landroid/content/ContentValues;
    if-eqz v2, :cond_4

    .line 849
    const-string/jumbo v19, "adnAfterValue"

    .line 850
    const-string/jumbo v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 849
    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    :cond_4
    if-eqz v3, :cond_5

    .line 853
    const-string/jumbo v19, "adnBeforeValue"

    .line 854
    const-string/jumbo v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 853
    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    :cond_5
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 859
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/common/model/ValuesDelta;

    .line 860
    .local v7, "anrValues":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v7}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v5

    .line 861
    .local v5, "anrAfter":Landroid/content/ContentValues;
    invoke-virtual {v7}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v6

    .line 862
    .local v6, "anrBefore":Landroid/content/ContentValues;
    if-eqz v5, :cond_6

    .line 863
    const-string/jumbo v19, "anrAfterValue"

    .line 864
    const-string/jumbo v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 863
    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    :cond_6
    if-eqz v6, :cond_7

    .line 867
    const-string/jumbo v19, "anrBeforeValue"

    .line 868
    const-string/jumbo v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 867
    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    :cond_7
    const-string/jumbo v19, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 872
    .local v10, "emailDelta":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v10, :cond_9

    .line 873
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/contacts/common/model/ValuesDelta;

    .line 874
    .local v11, "emailValues":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v11}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v8

    .line 875
    .local v8, "emailAfter":Landroid/content/ContentValues;
    invoke-virtual {v11}, Lcom/android/contacts/common/model/ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v9

    .line 876
    .local v9, "emailBefore":Landroid/content/ContentValues;
    if-eqz v8, :cond_8

    .line 877
    const-string/jumbo v19, "emailAfterValue"

    const-string/jumbo v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    :cond_8
    if-eqz v9, :cond_9

    .line 880
    const-string/jumbo v19, "emailBeforeValue"

    const-string/jumbo v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    .end local v5    # "anrAfter":Landroid/content/ContentValues;
    .end local v6    # "anrBefore":Landroid/content/ContentValues;
    .end local v7    # "anrValues":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v8    # "emailAfter":Landroid/content/ContentValues;
    .end local v9    # "emailBefore":Landroid/content/ContentValues;
    .end local v10    # "emailDelta":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .end local v11    # "emailValues":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_9
    return-object v18
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;ZI)Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isToRefresh"    # Z
    .param p2, "slotId"    # I

    .prologue
    const-class v4, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;

    monitor-enter v4

    .line 187
    const/4 v1, 0x0

    .line 189
    .local v1, "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    packed-switch p2, :pswitch_data_0

    .line 201
    :try_start_0
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->sInstanceSub1:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    const/4 v1, 0x0

    move-object v2, v1

    .line 202
    .end local v1    # "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    .local v2, "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    :goto_0
    if-nez v2, :cond_3

    .line 203
    :try_start_1
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;

    invoke-direct {v1, p0, p2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;-><init>(Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 204
    .end local v2    # "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    .local v1, "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    :try_start_2
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->sInstanceSub1:Ljava/lang/ref/WeakReference;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit v4

    .line 210
    return-object v1

    .line 191
    .local v1, "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    :pswitch_0
    :try_start_3
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->sInstanceSub2:Ljava/lang/ref/WeakReference;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_0

    const/4 v1, 0x0

    move-object v2, v1

    .line 192
    .end local v1    # "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    .restart local v2    # "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    :goto_2
    if-nez v2, :cond_1

    .line 193
    :try_start_4
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;

    invoke-direct {v1, p0, p2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;-><init>(Landroid/content/Context;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 194
    .end local v2    # "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    .local v1, "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    :try_start_5
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->sInstanceSub2:Ljava/lang/ref/WeakReference;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .end local v1    # "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    :catchall_0
    move-exception v3

    :goto_3
    monitor-exit v4

    throw v3

    .line 191
    .local v1, "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    :cond_0
    :try_start_6
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->sInstanceSub2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;

    move-object v1, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .local v1, "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    move-object v2, v1

    .end local v1    # "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    .restart local v2    # "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    goto :goto_2

    .line 195
    :cond_1
    if-eqz p1, :cond_4

    .line 196
    :try_start_7
    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->loadMTKPbrInfo(Landroid/content/Context;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v1, v2

    .end local v2    # "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    .restart local v1    # "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    goto :goto_1

    .line 201
    .local v1, "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    :cond_2
    :try_start_8
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->sInstanceSub1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;

    move-object v1, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .local v1, "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    move-object v2, v1

    .end local v1    # "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    .restart local v2    # "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    goto :goto_0

    .line 205
    :cond_3
    if-eqz p1, :cond_4

    .line 206
    :try_start_9
    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->loadMTKPbrInfo(Landroid/content/Context;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object v1, v2

    .end local v2    # "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    .restart local v1    # "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    goto :goto_1

    .end local v1    # "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    .restart local v2    # "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    .restart local v1    # "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    goto :goto_3

    .end local v1    # "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    .restart local v2    # "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    :cond_4
    move-object v1, v2

    .end local v2    # "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    .restart local v1    # "instance":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    goto :goto_1

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;ZLjava/lang/String;)Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isToRefresh"    # Z
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-static {p2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getSlotNumber(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getInstance(Landroid/content/Context;ZI)Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;

    move-result-object v0

    return-object v0
.end method

.method private getPbrNumberForAddNewContact()I
    .locals 3

    .prologue
    .line 395
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mPbrInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 396
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mPbrInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->getPbrRemainCapacity()I

    move-result v1

    .line 397
    .local v1, "remainCapacity":I
    if-lez v1, :cond_0

    .line 398
    return v0

    .line 395
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    .end local v1    # "remainCapacity":I
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public static getSIMContentsFromId(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simContactId"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 944
    if-nez p0, :cond_0

    .line 945
    return-object v9

    .line 947
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 948
    .local v0, "cr":Landroid/content/ContentResolver;
    if-nez v0, :cond_1

    .line 949
    return-object v9

    .line 951
    :cond_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 952
    .local v8, "values":Landroid/content/ContentValues;
    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string/jumbo v1, "name"

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 953
    const-string/jumbo v1, "number"

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const-string/jumbo v1, "emails"

    const/4 v3, 0x3

    aput-object v1, v2, v3

    const-string/jumbo v1, "anrs"

    const/4 v3, 0x4

    aput-object v1, v2, v3

    .line 954
    .local v2, "projection":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "simCursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/model/AdnAccountType;->ADN_URI:Landroid/net/Uri;

    .line 955
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 954
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 956
    .local v7, "simCursor":Landroid/database/Cursor;
    :cond_2
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 958
    const-string/jumbo v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 957
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 959
    .local v6, "desirePhoneId":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 960
    const-string/jumbo v1, "tag"

    .line 961
    const-string/jumbo v3, "name"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 960
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    const-string/jumbo v1, "number"

    .line 963
    const-string/jumbo v3, "number"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 962
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    const-string/jumbo v1, "emails"

    .line 965
    const-string/jumbo v3, "emails"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 964
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const-string/jumbo v1, "anr"

    .line 967
    const-string/jumbo v3, "anrs"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 966
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 971
    .end local v6    # "desirePhoneId":Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_4

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_0
    if-eqz v9, :cond_8

    throw v9

    :catch_0
    move-exception v9

    goto :goto_0

    .end local v7    # "simCursor":Landroid/database/Cursor;
    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    move-object v10, v3

    move-object v3, v1

    move-object v1, v10

    :goto_1
    if-eqz v7, :cond_5

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_2
    if-eqz v3, :cond_7

    throw v3

    :catch_2
    move-exception v4

    if-nez v3, :cond_6

    move-object v3, v4

    goto :goto_2

    :cond_6
    if-eq v3, v4, :cond_5

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    throw v1

    .line 972
    .restart local v7    # "simCursor":Landroid/database/Cursor;
    :cond_8
    return-object v8

    .line 971
    .end local v7    # "simCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    move-object v3, v9

    goto :goto_1
.end method

.method public static getSimUri(I)Landroid/net/Uri;
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    const/4 v0, 0x0

    .line 683
    packed-switch p0, :pswitch_data_0

    .line 689
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SubInfoUtils;->getIccProviderUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 685
    :pswitch_0
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SubInfoUtils;->getIccProviderUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 687
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SubInfoUtils;->getIccProviderUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 683
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSimUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 672
    const-string/jumbo v0, "com.sonyericsson.adncontacts"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/SubInfoUtils;->getIccProviderUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 674
    :cond_0
    const-string/jumbo v0, "com.sonyericsson.adnsub1contacts"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/SubInfoUtils;->getIccProviderUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 676
    :cond_1
    const-string/jumbo v0, "com.sonyericsson.adnsub2contacts"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 677
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/SubInfoUtils;->getIccProviderUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 679
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSlotNumber(Ljava/lang/String;)I
    .locals 2
    .param p0, "accountType"    # Ljava/lang/String;

    .prologue
    .line 253
    const-string/jumbo v1, "com.sonyericsson.adnsub1contacts"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    const/4 v0, 0x0

    .line 260
    .local v0, "slotNumber":I
    :goto_0
    return v0

    .line 255
    .end local v0    # "slotNumber":I
    :cond_0
    const-string/jumbo v1, "com.sonyericsson.adnsub2contacts"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    const/4 v0, 0x1

    .restart local v0    # "slotNumber":I
    goto :goto_0

    .line 258
    .end local v0    # "slotNumber":I
    :cond_1
    const/4 v0, -0x1

    .restart local v0    # "slotNumber":I
    goto :goto_0
.end method

.method public static getWhereClauseFromContentValues(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 8
    .param p0, "cv"    # Landroid/content/ContentValues;

    .prologue
    const/4 v6, 0x0

    .line 976
    if-nez p0, :cond_0

    .line 977
    return-object v6

    .line 979
    :cond_0
    const-string/jumbo v6, "tag"

    invoke-virtual {p0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 980
    .local v4, "tag":Ljava/lang/String;
    const-string/jumbo v6, "number"

    invoke-virtual {p0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 981
    .local v2, "number":Ljava/lang/String;
    const-string/jumbo v6, "emails"

    invoke-virtual {p0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 982
    .local v1, "emails":Ljava/lang/String;
    const-string/jumbo v6, "anr"

    invoke-virtual {p0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 983
    .local v0, "anrs":Ljava/lang/String;
    const/4 v5, 0x0

    .line 984
    .local v5, "where":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 985
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 986
    const-string/jumbo v6, "tag=\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 989
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 990
    const-string/jumbo v6, " AND "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    :cond_2
    const-string/jumbo v6, "number=\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    :cond_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 995
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 996
    const-string/jumbo v6, " AND "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    :cond_4
    const-string/jumbo v6, "emails=\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    :cond_5
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7

    .line 1001
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 1002
    const-string/jumbo v6, " AND "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    :cond_6
    const-string/jumbo v6, "anrs=\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_8

    .line 1007
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1009
    .end local v5    # "where":Ljava/lang/String;
    :cond_8
    return-object v5
.end method

.method public static isAdnAccount(Ljava/lang/String;)Z
    .locals 1
    .param p0, "accountType"    # Ljava/lang/String;

    .prologue
    .line 663
    const-string/jumbo v0, "com.sonyericsson.adncontacts"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 664
    const-string/jumbo v0, "com.sonyericsson.adnsub1contacts"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 663
    if-nez v0, :cond_0

    .line 665
    const-string/jumbo v0, "com.sonyericsson.adnsub2contacts"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 663
    if-eqz v0, :cond_1

    .line 666
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 668
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized loadMTKPbrInfo(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    monitor-enter p0

    .line 504
    :try_start_0
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mPbrInfos:Ljava/util/List;

    if-nez v8, :cond_0

    .line 505
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mPbrInfos:Ljava/util/List;

    .line 510
    :cond_0
    sget-boolean v8, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->sSimulator:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    monitor-exit p0

    .line 511
    return-void

    .line 514
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mPbrInfos:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 516
    if-nez p1, :cond_2

    monitor-exit p0

    .line 517
    return-void

    .line 520
    :cond_2
    :try_start_2
    iget v8, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mSlotId:I

    invoke-static {v8}, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->isSimInserted(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 521
    iget v8, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mSlotId:I

    invoke-static {v8}, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->isPhoneBookReady(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 525
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/SubInfoUtils;->getPhoneBookServiceName()Ljava/lang/String;

    move-result-object v6

    .line 526
    .local v6, "serviceName":Ljava/lang/String;
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 529
    .local v2, "iIccPhbB":Lcom/android/internal/telephony/IIccPhoneBook;
    const-string/jumbo v8, "phoneEx"

    .line 528
    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 530
    .local v5, "phoneEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    const/4 v7, 0x0

    .line 531
    .local v7, "storageInfos":[I
    const/4 v3, 0x0

    .line 533
    .local v3, "pbMemInfos":[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;
    if-eqz v2, :cond_3

    .line 534
    :try_start_3
    iget v8, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mSlotId:I

    invoke-static {v8}, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->getSubIdBySlotId(I)I

    move-result v8

    invoke-interface {v2, v8}, Lcom/android/internal/telephony/IIccPhoneBook;->getPhonebookMemStorageExt(I)[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    move-result-object v3

    .line 536
    .end local v3    # "pbMemInfos":[Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;
    :cond_3
    if-eqz v5, :cond_4

    .line 537
    iget v8, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mSlotId:I

    invoke-static {v8}, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->getSubIdBySlotId(I)I

    move-result v8

    invoke-interface {v5, v8}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getAdnStorageInfo(I)[I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    .line 543
    .end local v7    # "storageInfos":[I
    :cond_4
    :goto_0
    :try_start_4
    sget-object v8, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "storageInfos[2] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget v10, v7, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "storageInfos[3] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x3

    aget v10, v7, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    if-nez v3, :cond_6

    .line 545
    sget-object v8, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "pbMemInfos = null!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 546
    return-void

    .end local v2    # "iIccPhbB":Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v5    # "phoneEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    .end local v6    # "serviceName":Ljava/lang/String;
    :cond_5
    monitor-exit p0

    .line 522
    return-void

    .line 540
    .restart local v2    # "iIccPhbB":Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v5    # "phoneEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    .restart local v6    # "serviceName":Ljava/lang/String;
    .restart local v7    # "storageInfos":[I
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "iIccPhbB":Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v5    # "phoneEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    .end local v6    # "serviceName":Ljava/lang/String;
    .end local v7    # "storageInfos":[I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 548
    .restart local v2    # "iIccPhbB":Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v5    # "phoneEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    .restart local v6    # "serviceName":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_6
    array-length v8, v3

    if-ge v1, v8, :cond_8

    .line 549
    new-instance v4, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;

    const/4 v8, 0x0

    invoke-direct {v4, v8}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;-><init>(Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;)V

    .line 550
    .local v4, "pbrInfo":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;
    aget-object v8, v3, v1

    const/4 v9, 0x0

    invoke-direct {p0, v4, v9, v8}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->loadSimInfoToPbrInfoArr(Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;ILcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;)V

    .line 551
    aget-object v8, v3, v1

    const/4 v9, 0x1

    invoke-direct {p0, v4, v9, v8}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->loadSimInfoToPbrInfoArr(Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;ILcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;)V

    .line 553
    iget v8, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mUiccType:I

    if-ne v8, v11, :cond_7

    .line 554
    aget-object v8, v3, v1

    const/4 v9, 0x2

    invoke-direct {p0, v4, v9, v8}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->loadSimInfoToPbrInfoArr(Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;ILcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;)V

    .line 555
    aget-object v8, v3, v1

    const/4 v9, 0x3

    invoke-direct {p0, v4, v9, v8}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->loadSimInfoToPbrInfoArr(Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;ILcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;)V

    .line 557
    :cond_7
    iget-object v8, v4, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x2

    aget v9, v7, v9

    const/4 v10, 0x1

    aput v9, v8, v10

    .line 558
    iget-object v8, v4, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x3

    aget v9, v7, v9

    const/4 v10, 0x0

    aput v9, v8, v10

    .line 560
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mPbrInfos:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 548
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v4    # "pbrInfo":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;
    :cond_8
    monitor-exit p0

    .line 503
    return-void
.end method

.method private declared-synchronized loadPbrInfo(Landroid/content/Context;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    monitor-enter p0

    .line 424
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mPbrInfos:Ljava/util/List;

    if-nez v2, :cond_0

    .line 425
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mPbrInfos:Ljava/util/List;

    .line 430
    :cond_0
    sget-boolean v2, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->sSimulator:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    monitor-exit p0

    .line 431
    return-void

    .line 434
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mPbrInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 436
    if-nez p1, :cond_2

    monitor-exit p0

    .line 437
    return-void

    .line 440
    :cond_2
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 442
    .local v1, "cr":Landroid/content/ContentResolver;
    if-nez v1, :cond_3

    monitor-exit p0

    .line 443
    return-void

    .line 446
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mCapacityUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v11

    .line 449
    .local v11, "c":Landroid/database/Cursor;
    :goto_0
    if-eqz v11, :cond_7

    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 450
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 451
    .local v14, "nameInfoStr":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 453
    .local v7, "adnInfoStr":Ljava/lang/String;
    const-string/jumbo v2, ":"

    invoke-virtual {v14, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 454
    .local v15, "nameInfoStrs":[Ljava/lang/String;
    const-string/jumbo v2, ":"

    invoke-virtual {v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 456
    .local v8, "adnInfoStrs":[Ljava/lang/String;
    new-instance v16, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;-><init>(Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;)V

    .line 458
    .local v16, "pbrInfo":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 459
    const/4 v3, 0x1

    aget-object v3, v15, v3

    .line 458
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 460
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 461
    const/4 v3, 0x2

    aget-object v3, v15, v3

    .line 460
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 462
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    const/4 v3, 0x2

    aget-object v2, v2, v3

    .line 463
    const/4 v3, 0x3

    aget-object v3, v15, v3

    .line 462
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 466
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 467
    const/4 v3, 0x1

    aget-object v3, v8, v3

    .line 466
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 468
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 469
    const/4 v3, 0x2

    aget-object v3, v8, v3

    .line 468
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 470
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    const/4 v3, 0x2

    aget-object v2, v2, v3

    .line 471
    const/4 v3, 0x3

    aget-object v3, v8, v3

    .line 470
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 473
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mUiccType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mUiccType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 474
    :cond_4
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 475
    .local v12, "emailInfoStr":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 477
    .local v9, "anrInfoStr":Ljava/lang/String;
    const-string/jumbo v2, ":"

    invoke-virtual {v12, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 478
    .local v13, "emailInfoStrs":[Ljava/lang/String;
    const-string/jumbo v2, ":"

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 480
    .local v10, "anrInfoStrs":[Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 481
    const/4 v3, 0x1

    aget-object v3, v10, v3

    .line 480
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    aput v3, v2, v4

    .line 482
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 483
    const/4 v3, 0x2

    aget-object v3, v10, v3

    .line 482
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    aput v3, v2, v4

    .line 484
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    const/4 v3, 0x2

    aget-object v2, v2, v3

    .line 485
    const/4 v3, 0x3

    aget-object v3, v10, v3

    .line 484
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    aput v3, v2, v4

    .line 487
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 488
    const/4 v3, 0x1

    aget-object v3, v13, v3

    .line 487
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    aput v3, v2, v4

    .line 489
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 490
    const/4 v3, 0x2

    aget-object v3, v13, v3

    .line 489
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    aput v3, v2, v4

    .line 491
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    const/4 v3, 0x2

    aget-object v2, v2, v3

    .line 492
    const/4 v3, 0x3

    aget-object v3, v13, v3

    .line 491
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    aput v3, v2, v4

    .line 494
    .end local v9    # "anrInfoStr":Ljava/lang/String;
    .end local v10    # "anrInfoStrs":[Ljava/lang/String;
    .end local v12    # "emailInfoStr":Ljava/lang/String;
    .end local v13    # "emailInfoStrs":[Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mPbrInfos:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 496
    .end local v7    # "adnInfoStr":Ljava/lang/String;
    .end local v8    # "adnInfoStrs":[Ljava/lang/String;
    .end local v14    # "nameInfoStr":Ljava/lang/String;
    .end local v15    # "nameInfoStrs":[Ljava/lang/String;
    .end local v16    # "pbrInfo":Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;
    :catchall_0
    move-exception v2

    .line 497
    if-eqz v11, :cond_6

    .line 498
    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 496
    :cond_6
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v11    # "c":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 497
    .restart local v1    # "cr":Landroid/content/ContentResolver;
    .restart local v11    # "c":Landroid/database/Cursor;
    :cond_7
    if-eqz v11, :cond_8

    .line 498
    :try_start_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_8
    monitor-exit p0

    .line 423
    return-void
.end method

.method private loadSimInfoToPbrInfoArr(Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;ILcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;)V
    .locals 4
    .param p1, "pbrInfo"    # Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;
    .param p2, "column"    # I
    .param p3, "usimInfo"    # Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 565
    if-eqz p1, :cond_0

    .line 566
    packed-switch p2, :pswitch_data_0

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 568
    :pswitch_0
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    aget-object v0, v0, v2

    invoke-virtual {p3}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->getAdnFree()I

    move-result v1

    aput v1, v0, p2

    .line 569
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TAG Free = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->getAdnFree()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    aget-object v0, v0, v3

    invoke-virtual {p3}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->getAdnTotal()I

    move-result v1

    aput v1, v0, p2

    .line 571
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TAG Total = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->getAdnTotal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 574
    :pswitch_1
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    aget-object v0, v0, v2

    invoke-virtual {p3}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->getAdnFree()I

    move-result v1

    aput v1, v0, p2

    .line 575
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ADN Free = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->getAdnFree()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    aget-object v0, v0, v3

    invoke-virtual {p3}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->getAdnTotal()I

    move-result v1

    aput v1, v0, p2

    .line 577
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ADN Total = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->getAdnTotal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ADN used = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->getAdnUsed()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 581
    :pswitch_2
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    aget-object v0, v0, v1

    invoke-virtual {p3}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->getEmailLength()I

    move-result v1

    aput v1, v0, p2

    .line 582
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    aget-object v0, v0, v2

    invoke-virtual {p3}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->getEmailFree()I

    move-result v1

    aput v1, v0, p2

    .line 584
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EMAIL Free = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->getEmailFree()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    aget-object v0, v0, v3

    invoke-virtual {p3}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->getEmailTotal()I

    move-result v1

    aput v1, v0, p2

    .line 587
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EMAIL Total = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->getEmailTotal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 590
    :pswitch_3
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    aget-object v0, v0, v1

    invoke-virtual {p3}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->getAnrLength()I

    move-result v1

    aput v1, v0, p2

    .line 591
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    aget-object v0, v0, v2

    invoke-virtual {p3}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->getAnrFree()I

    move-result v1

    aput v1, v0, p2

    .line 592
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ANR Free = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->getAnrFree()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    aget-object v0, v0, v3

    invoke-virtual {p3}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->getAnrTotal()I

    move-result v1

    aput v1, v0, p2

    .line 594
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ANR Total = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/mediatek/internal/telephony/uicc/UsimPBMemInfo;->getAnrTotal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 566
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static showToastIfSimAbsent(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "checkType"    # I

    .prologue
    const/4 v3, 0x0

    .line 917
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getSlotNumber(Ljava/lang/String;)I

    move-result v1

    .line 918
    .local v1, "slot":I
    invoke-static {p0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SimUtil;->isSimAbsent(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 919
    const/4 v0, -0x1

    .line 920
    .local v0, "resId":I
    packed-switch p2, :pswitch_data_0

    .line 934
    return v3

    .line 922
    :pswitch_0
    const v0, 0x7f090302

    .line 936
    :goto_0
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 937
    const/4 v2, 0x1

    return v2

    .line 925
    :pswitch_1
    const v0, 0x7f090304

    .line 926
    goto :goto_0

    .line 928
    :pswitch_2
    const v0, 0x7f090303

    .line 929
    goto :goto_0

    .line 931
    :pswitch_3
    const v0, 0x7f090301

    .line 932
    goto :goto_0

    .line 939
    .end local v0    # "resId":I
    :cond_0
    return v3

    .line 920
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getAdnNumberLength(I)I
    .locals 2
    .param p1, "pbrIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 287
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->isValidPbrIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mPbrInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 288
    goto :goto_0
.end method

.method public getAnrNumberLength(I)I
    .locals 2
    .param p1, "pbrIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 292
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->isValidPbrIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mPbrInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    aget-object v0, v0, v1

    const/4 v1, 0x3

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 293
    goto :goto_0
.end method

.method public getAnrNumberRemainCapacity(I)I
    .locals 2
    .param p1, "pbrIndex"    # I

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->isValidPbrIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mPbrInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x3

    aget v0, v0, v1

    :goto_0
    return v0

    .line 298
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnrNumberTotalCapacity(I)I
    .locals 2
    .param p1, "pbrIndex"    # I

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->isValidPbrIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mPbrInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x3

    aget v0, v0, v1

    :goto_0
    return v0

    .line 303
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAvailablePbr(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 327
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAvailablePbr - mUiccType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mUiccType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->loadMTKPbrInfo(Landroid/content/Context;)V

    .line 329
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mUiccType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mUiccType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 330
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getAvailableSimPbr()I

    move-result v0

    return v0

    .line 331
    :cond_1
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mUiccType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mUiccType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 332
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getAvailableUsimPbr()I

    move-result v0

    return v0

    .line 335
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public getEmailLength(I)I
    .locals 2
    .param p1, "pbrIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 307
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->isValidPbrIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mPbrInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    aget-object v0, v0, v1

    const/4 v1, 0x2

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 308
    goto :goto_0
.end method

.method public getEmailRemainCapacity(I)I
    .locals 2
    .param p1, "pbrIndex"    # I

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->isValidPbrIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mPbrInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x2

    aget v0, v0, v1

    :goto_0
    return v0

    .line 313
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIccProviderInsertValues(ILcom/android/contacts/common/model/RawContactDelta;)Landroid/content/ContentValues;
    .locals 17
    .param p1, "pbrIndex"    # I
    .param p2, "entityDelta"    # Lcom/android/contacts/common/model/RawContactDelta;

    .prologue
    .line 769
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getIccProviderValues(Lcom/android/contacts/common/model/RawContactDelta;)Ljava/util/Map;

    move-result-object v7

    .line 771
    .local v7, "iccValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v14, "nameAfterValue"

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 772
    .local v8, "name":Ljava/lang/String;
    const-string/jumbo v14, "adnAfterValue"

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 773
    .local v2, "adnNum":Ljava/lang/String;
    const-string/jumbo v14, "anrAfterValue"

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 774
    .local v4, "anrNum":Ljava/lang/String;
    const-string/jumbo v14, "emailAfterValue"

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 775
    .local v6, "email":Ljava/lang/String;
    move-object v3, v2

    .line 776
    .local v3, "adnNumValue":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 777
    const-string/jumbo v14, "adnBeforeValue"

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "adnNumValue":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 779
    .restart local v3    # "adnNumValue":Ljava/lang/String;
    :cond_0
    move-object v5, v4

    .line 780
    .local v5, "anrNumValue":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 781
    const-string/jumbo v14, "anrBeforeValue"

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "anrNumValue":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 783
    .restart local v5    # "anrNumValue":Ljava/lang/String;
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 791
    :cond_2
    :goto_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 792
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->convertEmailToName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 795
    const-string/jumbo v14, "vnd.android.cursor.item/name"

    .line 794
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 796
    .local v10, "nameDelta":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v10, :cond_3

    .line 797
    const/4 v14, 0x0

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/contacts/common/model/ValuesDelta;

    .line 798
    .local v11, "nameValues":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v11}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v9

    .line 799
    .local v9, "nameAfter":Landroid/content/ContentValues;
    const-string/jumbo v14, "data2"

    invoke-virtual {v9, v14, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    .end local v9    # "nameAfter":Landroid/content/ContentValues;
    .end local v10    # "nameDelta":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .end local v11    # "nameValues":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_3
    sget-boolean v14, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->VERBOSE:Z

    if-eqz v14, :cond_4

    .line 804
    sget-object v14, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "name: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " adn: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " anr: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " email: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    :cond_4
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 809
    .local v12, "newIccValues":Landroid/content/ContentValues;
    const-string/jumbo v14, "tag"

    invoke-virtual {v12, v14, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    const-string/jumbo v14, "number"

    invoke-virtual {v12, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    const-string/jumbo v14, "anr"

    invoke-virtual {v12, v14, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const-string/jumbo v14, "emails"

    invoke-virtual {v12, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const-string/jumbo v14, "gas"

    const-string/jumbo v15, ""

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    const-string/jumbo v14, "sne"

    const-string/jumbo v15, ""

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const-string/jumbo v14, "aas"

    const-string/jumbo v15, ""

    invoke-virtual {v12, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    return-object v12

    .line 785
    .end local v12    # "newIccValues":Landroid/content/ContentValues;
    :cond_5
    move-object v13, v2

    .line 786
    .local v13, "temp":Ljava/lang/String;
    move-object v2, v4

    .line 787
    move-object v4, v13

    goto/16 :goto_0
.end method

.method public getIccProviderUpdateValues(ILcom/android/contacts/common/model/RawContactDelta;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 15
    .param p1, "pbrIndex"    # I
    .param p2, "entityDelta"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p3, "sourceId"    # Ljava/lang/String;

    .prologue
    .line 705
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getIccProviderValues(Lcom/android/contacts/common/model/RawContactDelta;)Ljava/util/Map;

    move-result-object v7

    .line 707
    .local v7, "iccValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v12, "nameAfterValue"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 708
    .local v8, "name":Ljava/lang/String;
    const-string/jumbo v12, "adnAfterValue"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 709
    .local v1, "adnNum":Ljava/lang/String;
    const-string/jumbo v12, "anrAfterValue"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 710
    .local v3, "anrNum":Ljava/lang/String;
    const-string/jumbo v12, "emailAfterValue"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 712
    .local v5, "email":Ljava/lang/String;
    move-object v2, v1

    .line 713
    .local v2, "adnNumValue":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 714
    const-string/jumbo v12, "adnBeforeValue"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "adnNumValue":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 716
    .restart local v2    # "adnNumValue":Ljava/lang/String;
    :cond_0
    move-object v4, v3

    .line 717
    .local v4, "anrNumValue":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 718
    const-string/jumbo v12, "anrBeforeValue"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "anrNumValue":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 721
    .restart local v4    # "anrNumValue":Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 729
    :cond_2
    :goto_0
    if-nez v8, :cond_3

    .line 730
    const-string/jumbo v12, "nameBeforeValue"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "name":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 732
    .restart local v8    # "name":Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_4

    .line 733
    const-string/jumbo v12, "adnBeforeValue"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "adnNum":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 736
    .restart local v1    # "adnNum":Ljava/lang/String;
    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 737
    move-object v6, v5

    .line 738
    .local v6, "emailValue":Ljava/lang/String;
    if-nez v5, :cond_5

    .line 739
    const-string/jumbo v12, "emailBeforeValue"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "emailValue":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 741
    .restart local v6    # "emailValue":Ljava/lang/String;
    :cond_5
    move/from16 v0, p1

    invoke-direct {p0, v0, v6}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->convertEmailToName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 744
    const-string/jumbo v12, "vnd.android.cursor.item/name"

    .line 743
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 745
    .local v9, "nameDelta":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-eqz v9, :cond_6

    .line 746
    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/common/model/ValuesDelta;

    .line 747
    .local v10, "nameValues":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v10}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v12

    const-string/jumbo v13, "data2"

    invoke-virtual {v12, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    .end local v6    # "emailValue":Ljava/lang/String;
    .end local v9    # "nameDelta":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/ValuesDelta;>;"
    .end local v10    # "nameValues":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_6
    sget-object v12, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "name: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " adn: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " anr: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " email: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 755
    .local v11, "newIccValues":Landroid/content/ContentValues;
    const-string/jumbo v12, "newTag"

    invoke-virtual {v11, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-string/jumbo v12, "newNumber"

    invoke-virtual {v11, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const-string/jumbo v12, "newEmails"

    invoke-virtual {v11, v12, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string/jumbo v12, "newAnr"

    invoke-virtual {v11, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string/jumbo v12, "index"

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string/jumbo v12, "aas"

    const-string/jumbo v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const-string/jumbo v12, "gas"

    const-string/jumbo v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const-string/jumbo v12, "sne"

    const-string/jumbo v13, ""

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    return-object v11

    .line 723
    .end local v11    # "newIccValues":Landroid/content/ContentValues;
    :cond_7
    move-object v3, v1

    .line 724
    move-object v1, v4

    goto/16 :goto_0
.end method

.method public getNameLength(I)I
    .locals 2
    .param p1, "pbrIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 282
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->isValidPbrIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mPbrInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->pbrEntities:[[I

    aget-object v0, v0, v1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 283
    goto :goto_0
.end method

.method public getPbrNumber(J)I
    .locals 5
    .param p1, "recordIndex"    # J

    .prologue
    .line 381
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->getPbrNumberForAddNewContact()I

    move-result v2

    return v2

    .line 384
    :cond_0
    const/4 v0, 0x0

    .line 385
    .local v0, "capSum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mPbrInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 386
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mPbrInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->getPbrCapacity()I

    move-result v2

    add-int/2addr v0, v2

    .line 387
    int-to-long v2, v0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    .line 388
    return v1

    .line 385
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 391
    :cond_2
    const/4 v2, -0x1

    return v2
.end method

.method public getTotalCapacity()I
    .locals 3

    .prologue
    .line 410
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mPbrInfos:Ljava/util/List;

    if-nez v2, :cond_0

    .line 411
    const/4 v2, 0x0

    return v2

    .line 413
    :cond_0
    const/4 v1, 0x0

    .line 414
    .local v1, "totalCap":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mPbrInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 415
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mPbrInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper$PbrInfo;->getPbrCapacity()I

    move-result v2

    add-int/2addr v1, v2

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    :cond_1
    return v1
.end method

.method public getUiccType()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mUiccType:I

    return v0
.end method

.method public isAllEmpty(Landroid/content/ContentValues;)Z
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 901
    const/4 v0, 0x1

    .line 902
    .local v0, "isAllEmpty":Z
    if-eqz p1, :cond_1

    .line 903
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 904
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 905
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 906
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 907
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 908
    const/4 v0, 0x0

    .line 913
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return v0
.end method

.method public isValidPbrIndex(I)Z
    .locals 2
    .param p1, "pbrIndex"    # I

    .prologue
    const/4 v0, 0x0

    .line 318
    const/4 v1, -0x1

    if-ge v1, p1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mPbrInfos:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mPbrInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setUiccType(I)V
    .locals 0
    .param p1, "uiccType"    # I

    .prologue
    .line 278
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/util/AdnHelper;->mUiccType:I

    .line 277
    return-void
.end method
