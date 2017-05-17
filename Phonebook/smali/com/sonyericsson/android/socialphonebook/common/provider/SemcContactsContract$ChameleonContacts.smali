.class public final Lcom/sonyericsson/android/socialphonebook/common/provider/SemcContactsContract$ChameleonContacts;
.super Ljava/lang/Object;
.source "SemcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/common/provider/SemcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChameleonContacts"
.end annotation


# static fields
.field public static final CONTENT_PRELOADED_URI:Landroid/net/Uri;

.field public static final FIRST_NAME:Ljava/lang/String; = "first_name"

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final LAST_NAME:Ljava/lang/String; = "last_name"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final NUMBER_TYPE:Ljava/lang/String; = "type"

.field public static final WEBSITE:Ljava/lang/String; = "website"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 127
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "update_preload_contacts"

    .line 126
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/common/provider/SemcContactsContract$ChameleonContacts;->CONTENT_PRELOADED_URI:Landroid/net/Uri;

    .line 121
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
