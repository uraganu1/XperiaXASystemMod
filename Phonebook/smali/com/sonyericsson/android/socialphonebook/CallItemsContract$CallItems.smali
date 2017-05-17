.class public final Lcom/sonyericsson/android/socialphonebook/CallItemsContract$CallItems;
.super Ljava/lang/Object;
.source "CallItemsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/sonyericsson/android/socialphonebook/CallItemsContract$CallColumns;
.implements Lcom/sonyericsson/android/socialphonebook/CallItemsContract$DataColumns;
.implements Lcom/sonyericsson/android/socialphonebook/CallItemsContract$CachedColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/CallItemsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallItems"
.end annotation


# static fields
.field public static final CONTACTS_AND_NUMBERS_URI:Landroid/net/Uri;

.field public static final CONTENT_CONTACT_LOOKUP_URI:Landroid/net/Uri;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.sonymobile.callitem"

.field public static final CONTENT_PHONE_NUMBER_LOOKUP_URI:Landroid/net/Uri;

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.sonymobile.callitem"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EXTRA_CALLS_IDS:Ljava/lang/String; = "com.sonymobile.callitems.EXTRA_CALLS_IDS"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 168
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/CallItemsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "call_items"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/CallItemsContract$CallItems;->CONTENT_URI:Landroid/net/Uri;

    .line 179
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/CallItemsContract$CallItems;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 180
    const-string/jumbo v1, "lookup"

    .line 179
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 180
    const-string/jumbo v1, "phone_number"

    .line 179
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/CallItemsContract$CallItems;->CONTENT_PHONE_NUMBER_LOOKUP_URI:Landroid/net/Uri;

    .line 188
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/CallItemsContract$CallItems;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 189
    const-string/jumbo v1, "lookup"

    .line 188
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 189
    const-string/jumbo v1, "contact"

    .line 188
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/CallItemsContract$CallItems;->CONTENT_CONTACT_LOOKUP_URI:Landroid/net/Uri;

    .line 195
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/CallItemsContract$CallItems;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 196
    const-string/jumbo v1, "contacts_and_numbers"

    .line 195
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/CallItemsContract$CallItems;->CONTACTS_AND_NUMBERS_URI:Landroid/net/Uri;

    .line 145
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCallIdUri(J)Landroid/net/Uri;
    .locals 2
    .param p0, "callId"    # J

    .prologue
    .line 202
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/CallItemsContract$CallItems;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildContactLookupUri(J)Landroid/net/Uri;
    .locals 2
    .param p0, "contactId"    # J

    .prologue
    .line 221
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/CallItemsContract$CallItems;->CONTENT_CONTACT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildPhoneNumberLookupUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 213
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/CallItemsContract$CallItems;->CONTENT_PHONE_NUMBER_LOOKUP_URI:Landroid/net/Uri;

    .line 214
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/CallItemsContract$CallItems;->normalizePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static normalizePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
