.class public Lcom/android/contacts/NfcHandler;
.super Ljava/lang/Object;
.source "NfcHandler.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;


# static fields
.field private static final PROFILE_LOOKUP_KEY:Ljava/lang/String; = "profile"

.field private static final TAG:Ljava/lang/String; = "ContactNfcHandler"


# instance fields
.field private final mContactUri:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/contacts/NfcHandler;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/contacts/NfcHandler;->mContactUri:Landroid/net/Uri;

    .line 64
    return-void
.end method

.method public static register(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 58
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    new-instance v1, Lcom/android/contacts/NfcHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/NfcHandler;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p0, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 56
    return-void
.end method


# virtual methods
.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .locals 13
    .param p1, "event"    # Landroid/nfc/NfcEvent;

    .prologue
    const/4 v12, 0x0

    .line 71
    iget-object v9, p0, Lcom/android/contacts/NfcHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 72
    .local v6, "resolver":Landroid/content/ContentResolver;
    iget-object v9, p0, Lcom/android/contacts/NfcHandler;->mContactUri:Landroid/net/Uri;

    if-eqz v9, :cond_5

    .line 73
    iget-object v9, p0, Lcom/android/contacts/NfcHandler;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "lookupKey":Ljava/lang/String;
    const-string/jumbo v9, "profile"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 78
    sget-object v9, Landroid/provider/ContactsContract$Profile;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 79
    const-string/jumbo v10, "no_photo"

    const-string/jumbo v11, "true"

    .line 78
    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 87
    .local v7, "shareUri":Landroid/net/Uri;
    :goto_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 88
    .local v3, "ndefBytes":Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 90
    .local v0, "buffer":[B
    const/4 v8, 0x0

    .line 92
    .local v8, "vcardInputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 93
    .local v8, "vcardInputStream":Ljava/io/InputStream;
    :goto_1
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "r":I
    if-lez v4, :cond_2

    .line 94
    const/4 v9, 0x0

    invoke-virtual {v3, v0, v9, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 99
    .end local v4    # "r":I
    .end local v8    # "vcardInputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v9, "ContactNfcHandler"

    const-string/jumbo v10, "IOException creating vcard."

    invoke-static {v9, v10, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    if-eqz v8, :cond_0

    .line 105
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 101
    :cond_0
    :goto_2
    return-object v12

    .line 82
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "ndefBytes":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "shareUri":Landroid/net/Uri;
    :cond_1
    sget-object v9, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    .line 84
    const-string/jumbo v10, "no_photo"

    const-string/jumbo v11, "true"

    .line 82
    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .restart local v7    # "shareUri":Landroid/net/Uri;
    goto :goto_0

    .line 97
    .restart local v0    # "buffer":[B
    .restart local v3    # "ndefBytes":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "r":I
    .restart local v8    # "vcardInputStream":Ljava/io/InputStream;
    :cond_2
    :try_start_3
    const-string/jumbo v9, "text/x-vcard"

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-static {v9, v10}, Landroid/nfc/NdefRecord;->createMime(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v5

    .line 98
    .local v5, "record":Landroid/nfc/NdefRecord;
    new-instance v9, Landroid/nfc/NdefMessage;

    const/4 v10, 0x0

    new-array v10, v10, [Landroid/nfc/NdefRecord;

    invoke-direct {v9, v5, v10}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    if-eqz v8, :cond_3

    .line 105
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 98
    :cond_3
    :goto_3
    return-object v9

    .line 106
    :catch_1
    move-exception v1

    .line 107
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v10, "ContactNfcHandler"

    const-string/jumbo v11, "IOException while closing InputStream."

    invoke-static {v10, v11, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 106
    .end local v4    # "r":I
    .end local v5    # "record":Landroid/nfc/NdefRecord;
    .end local v8    # "vcardInputStream":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    .line 107
    const-string/jumbo v9, "ContactNfcHandler"

    const-string/jumbo v10, "IOException while closing InputStream."

    invoke-static {v9, v10, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 102
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 103
    if-eqz v8, :cond_4

    .line 105
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 102
    :cond_4
    :goto_4
    throw v9

    .line 106
    :catch_3
    move-exception v1

    .line 107
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v10, "ContactNfcHandler"

    const-string/jumbo v11, "IOException while closing InputStream."

    invoke-static {v10, v11, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 112
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "lookupKey":Ljava/lang/String;
    .end local v3    # "ndefBytes":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "shareUri":Landroid/net/Uri;
    :cond_5
    const-string/jumbo v9, "ContactNfcHandler"

    const-string/jumbo v10, "No contact URI to share."

    invoke-static {v9, v10}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-object v12
.end method
