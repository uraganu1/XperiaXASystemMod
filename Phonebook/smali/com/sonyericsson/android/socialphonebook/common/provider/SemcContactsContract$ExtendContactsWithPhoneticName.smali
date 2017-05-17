.class public final Lcom/sonyericsson/android/socialphonebook/common/provider/SemcContactsContract$ExtendContactsWithPhoneticName;
.super Ljava/lang/Object;
.source "SemcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/common/provider/SemcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtendContactsWithPhoneticName"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PHONETIC_FAMILY_NAME:Ljava/lang/String; = "phonetic_family_name"

.field public static final PHONETIC_GIVEN_NAME:Ljava/lang/String; = "phonetic_given_name"

.field public static final PHONETIC_MIDDLE_NAME:Ljava/lang/String; = "phonetic_middle_name"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 405
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 406
    const-string/jumbo v1, "semc_contacts_with_phonetic_name"

    .line 405
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 404
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/common/provider/SemcContactsContract$ExtendContactsWithPhoneticName;->CONTENT_URI:Landroid/net/Uri;

    .line 396
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
