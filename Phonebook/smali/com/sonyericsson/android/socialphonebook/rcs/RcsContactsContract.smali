.class public final Lcom/sonyericsson/android/socialphonebook/rcs/RcsContactsContract;
.super Ljava/lang/Object;
.source "RcsContactsContract.java"


# static fields
.field private static final BASE_ID:I = 0x7d0

.field public static final FAIL:I = 0x0

.field public static final ID_EXTRACT_CAPABLE_NUMBERS:I = 0x7d2

.field public static final ID_REFRESH_ALL_CONTACTS:I = 0x7d1

.field public static final ID_REFRESH_CONTACTS:I = 0x7d0

.field public static final KEY_CONTACT_NUMBERS:Ljava/lang/String; = "contactNumbers"

.field private static final RCS_SERVICE_CLASS:Ljava/lang/String; = "com.sonymobile.contactsrcs.RcsContactsService"

.field private static final RCS_SERVICE_PACKAGE:Ljava/lang/String; = "com.sonymobile.contactsrcs"

.field public static final SERVICE_COMPONENT:Landroid/content/ComponentName;

.field public static final SUCCESS:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.sonymobile.contactsrcs"

    const-string/jumbo v2, "com.sonymobile.contactsrcs.RcsContactsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/rcs/RcsContactsContract;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
