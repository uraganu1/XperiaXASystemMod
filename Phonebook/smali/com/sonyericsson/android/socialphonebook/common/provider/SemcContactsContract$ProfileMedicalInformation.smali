.class public final Lcom/sonyericsson/android/socialphonebook/common/provider/SemcContactsContract$ProfileMedicalInformation;
.super Ljava/lang/Object;
.source "SemcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/common/provider/SemcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProfileMedicalInformation"
.end annotation


# static fields
.field public static final ADDITIONAL_INFORMATION:Ljava/lang/String; = "data4"

.field public static final ALLERGIES:Ljava/lang/String; = "data1"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.sonymobile.android.medical_info"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DONOR:Ljava/lang/String; = "data3"

.field public static final MEDICATION:Ljava/lang/String; = "data2"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 480
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "medical_information"

    .line 479
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/common/provider/SemcContactsContract$ProfileMedicalInformation;->CONTENT_URI:Landroid/net/Uri;

    .line 471
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
