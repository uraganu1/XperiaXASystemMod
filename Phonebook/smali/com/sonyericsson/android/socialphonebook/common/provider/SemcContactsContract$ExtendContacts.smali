.class public final Lcom/sonyericsson/android/socialphonebook/common/provider/SemcContactsContract$ExtendContacts;
.super Ljava/lang/Object;
.source "SemcContactsContract.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/common/provider/SemcContactsContract$ExtendContactsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/common/provider/SemcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtendContacts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/common/provider/SemcContactsContract$ExtendContacts$ExtendData;
    }
.end annotation


# static fields
.field public static final CONTENT_ICE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 98
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "ice_contacts"

    .line 97
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/common/provider/SemcContactsContract$ExtendContacts;->CONTENT_ICE_URI:Landroid/net/Uri;

    .line 87
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
