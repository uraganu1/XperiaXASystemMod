.class public final Lcom/sonyericsson/android/socialphonebook/SpbIntents;
.super Ljava/lang/Object;
.source "SpbIntents.java"


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "Phone contacts"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.sonyericsson.localcontacts"

.field public static final ACTION_PICK:Ljava/lang/String; = "com.sonyericsson.android.socialphonebook.action.PICK"

.field public static final ACTION_PICK_CONVERSATIONS_TARGET:Ljava/lang/String; = "com.sonyericsson.android.socialphonebook.action.PICK_CONVERSATIONS_TARGET"

.field public static final ADN_ACCOUNT_NAME:Ljava/lang/String; = "SIM contacts"

.field public static final ADN_ACCOUNT_TYPE:Ljava/lang/String; = "com.sonyericsson.adncontacts"

.field public static final ADN_AUTH_PACKAGE:Ljava/lang/String; = "com.sonyericsson.adncontacts"

.field public static final AUTH_PACKAGE:Ljava/lang/String; = "com.sonyericsson.localcontacts"

.field public static final EXTRA_ENABLE_CALL_LOG:Ljava/lang/String; = "com.sonyericsson.android.socialphonebook.intent.extra.ENABLE_CALL_LOG"

.field public static final EXTRA_MAX_RECIPIENT:Ljava/lang/String; = "com.sonyericsson.android.socialphonebook.intent.extra.MAX_RECIPIENT"

.field public static final EXTRA_MODE:Ljava/lang/String; = "com.sonyericsson.android.socialphonebook.intent.extra.MODE"

.field public static final EXTRA_MYSELF_CONTACT:Ljava/lang/String; = "com.sonyericsson.android.socialphonebook.intent.extra.IS_MYSELF"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_PHOTO_BITMAP:Ljava/lang/String; = "com.sonyericsson.android.socialphonebook.intent.extra.PHOTO_BITMAP"

.field public static final EXTRA_URI_STRINGS:Ljava/lang/String; = "com.sonyericsson.android.socialphonebook.intent.extra.URIS"

.field public static final MARKER_MYSELF_CONTACT:Ljava/lang/String; = "myselfcontact"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MIME_TYPE_EXTRACTED_CALL_INFORMATION:Ljava/lang/String; = "vnd.android.cursor.item/vnd.sonyericsson.extracted_call_information"

.field public static final MIME_TYPE_MYSELF_CONTACT:Ljava/lang/String; = "com.sonyericsson.android.socialphonebook.myself"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PICK_MODE_EMAIL:I = 0x2

.field public static final PICK_MODE_PHONE:I = 0x1

.field public static final SDN_ACCOUNT_NAME:Ljava/lang/String; = "SDN contacts"

.field public static final SDN_ACCOUNT_TYPE:Ljava/lang/String; = "com.sonyericsson.sdncontacts"

.field public static final SDN_AUTH_PACKAGE:Ljava/lang/String; = "com.sonyericsson.sdncontacts"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
