.class public Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;
.super Ljava/lang/Object;
.source "ContactDataHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;,
        Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$OnQueryCompleteListener;,
        Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$RcsCapabilityAsyncHandler;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_rcs_ContactDataHelper$QueryTypeSwitchesValues:[I = null

.field private static final CONTACTS_SELECTION:Ljava/lang/String; = "mimetype=\'vnd.android.cursor.item/com.gsma.services.rcs.registration-state\'"

.field private static final DATA_PROJECTION:[Ljava/lang/String;

.field private static final FAVORITE_CONTACTS_SELECTION:Ljava/lang/String; = "mimetype=\'vnd.android.cursor.item/com.gsma.services.rcs.registration-state\' AND starred=1"

.field private static final RCS_CAPABILITY_ENABLED:I = 0x1

.field private static final RCS_CAPABILITY_MIMETYPE:Ljava/lang/String; = "vnd.android.cursor.item/com.gsma.services.rcs.registration-state"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAsyncHandler:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$RcsCapabilityAsyncHandler;

.field private final mContactDataMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->DATA_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_android_socialphonebook_rcs_ContactDataHelper$QueryTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->-com_sonyericsson_android_socialphonebook_rcs_ContactDataHelper$QueryTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->-com_sonyericsson_android_socialphonebook_rcs_ContactDataHelper$QueryTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;->values()[Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;->RCS_CONTACTS:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;->RCS_FAVORITE_CONTACTS:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->-com_sonyericsson_android_socialphonebook_rcs_ContactDataHelper$QueryTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const-class v0, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->TAG:Ljava/lang/String;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 24
    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 25
    const-string/jumbo v1, "data2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 23
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->DATA_PROJECTION:[Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->mContactDataMap:Landroid/util/SparseArray;

    .line 65
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$RcsCapabilityAsyncHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->mContactDataMap:Landroid/util/SparseArray;

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$RcsCapabilityAsyncHandler;-><init>(Landroid/content/ContentResolver;Landroid/util/SparseArray;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->mAsyncHandler:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$RcsCapabilityAsyncHandler;

    .line 64
    return-void
.end method


# virtual methods
.method public cancelQuery(Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;)V
    .locals 3
    .param p1, "type"    # Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;

    .prologue
    .line 99
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->-getcom_sonyericsson_android_socialphonebook_rcs_ContactDataHelper$QueryTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown query type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->mAsyncHandler:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$RcsCapabilityAsyncHandler;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;->RCS_CONTACTS:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$RcsCapabilityAsyncHandler;->cancelOperation(I)V

    .line 98
    :goto_0
    return-void

    .line 105
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->mAsyncHandler:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$RcsCapabilityAsyncHandler;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;->RCS_FAVORITE_CONTACTS:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$RcsCapabilityAsyncHandler;->cancelOperation(I)V

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isRcsCapable(I)Z
    .locals 4
    .param p1, "contactId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->mContactDataMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 121
    .local v0, "rcsRegistrationState":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 124
    :cond_1
    return v2
.end method

.method public queryAsync(Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$OnQueryCompleteListener;)V
    .locals 8
    .param p1, "type"    # Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;
    .param p2, "queryListener"    # Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$OnQueryCompleteListener;

    .prologue
    const/4 v6, 0x0

    .line 76
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->-getcom_sonyericsson_android_socialphonebook_rcs_ContactDataHelper$QueryTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown query type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->mAsyncHandler:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$RcsCapabilityAsyncHandler;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;->RCS_CONTACTS:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;->ordinal()I

    move-result v1

    .line 79
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->DATA_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "mimetype=\'vnd.android.cursor.item/com.gsma.services.rcs.registration-state\'"

    move-object v2, p2

    move-object v7, v6

    .line 78
    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$RcsCapabilityAsyncHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 83
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->mAsyncHandler:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$RcsCapabilityAsyncHandler;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;->RCS_FAVORITE_CONTACTS:Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$QueryType;->ordinal()I

    move-result v1

    .line 84
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper;->DATA_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "mimetype=\'vnd.android.cursor.item/com.gsma.services.rcs.registration-state\' AND starred=1"

    move-object v2, p2

    move-object v7, v6

    .line 83
    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/android/socialphonebook/rcs/ContactDataHelper$RcsCapabilityAsyncHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
