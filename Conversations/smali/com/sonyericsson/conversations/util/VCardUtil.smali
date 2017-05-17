.class public Lcom/sonyericsson/conversations/util/VCardUtil;
.super Ljava/lang/Object;
.source "VCardUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;,
        Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;
    }
.end annotation


# static fields
.field private static isLocationCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 474
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/sonyericsson/conversations/util/VCardUtil;->isLocationCache:Ljava/util/HashMap;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createVCardFileFromInputStream(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "internal"    # Z

    .prologue
    .line 71
    const/4 v7, 0x0

    .line 72
    .local v7, "vCardFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 73
    .local v4, "input":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 75
    .local v5, "output":Ljava/io/OutputStream;
    const-string/jumbo v9, "vCard"

    .line 99
    .local v9, "vCardFileName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 100
    .local v4, "input":Ljava/io/InputStream;
    if-eqz v4, :cond_5

    .line 101
    if-eqz p2, :cond_0

    .line 102
    const-string/jumbo v10, ".vcf"

    .line 103
    invoke-static {p0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getTempDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v11

    .line 102
    invoke-static {v9, v10, v11}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    .line 104
    .local v7, "vCardFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->deleteOnExit()V

    .line 111
    :goto_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 112
    .local v6, "output":Ljava/io/OutputStream;
    if-eqz v6, :cond_4

    .line 114
    .end local v5    # "output":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 115
    .local v1, "done":Z
    :goto_1
    if-nez v1, :cond_4

    .line 116
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_15
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-result v0

    .line 117
    .local v0, "data":I
    const/4 v10, -0x1

    if-ne v0, v10, :cond_1

    .line 118
    const/4 v1, 0x1

    goto :goto_1

    .line 106
    .end local v0    # "data":I
    .end local v1    # "done":Z
    .end local v6    # "output":Ljava/io/OutputStream;
    .restart local v5    # "output":Ljava/io/OutputStream;
    .local v7, "vCardFile":Ljava/io/File;
    :cond_0
    :try_start_2
    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    .line 107
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ".vcf"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 106
    invoke-direct {v8, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 108
    .end local v7    # "vCardFile":Ljava/io/File;
    .local v8, "vCardFile":Ljava/io/File;
    :try_start_3
    invoke-virtual {v8}, Ljava/io/File;->deleteOnExit()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_14
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-object v7, v8

    .end local v8    # "vCardFile":Ljava/io/File;
    .local v7, "vCardFile":Ljava/io/File;
    goto :goto_0

    .line 120
    .end local v5    # "output":Ljava/io/OutputStream;
    .restart local v0    # "data":I
    .restart local v1    # "done":Z
    .restart local v6    # "output":Ljava/io/OutputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write(I)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_15
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    goto :goto_1

    .line 125
    .end local v0    # "data":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/FileNotFoundException;
    move-object v5, v6

    .line 134
    .end local v1    # "done":Z
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v6    # "output":Ljava/io/OutputStream;
    .end local v7    # "vCardFile":Ljava/io/File;
    :goto_2
    if-eqz v4, :cond_2

    .line 135
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 141
    :cond_2
    if-eqz v5, :cond_3

    .line 142
    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    .line 149
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_3
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    return-object v10

    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v6    # "output":Ljava/io/OutputStream;
    .restart local v7    # "vCardFile":Ljava/io/File;
    :cond_4
    move-object v5, v6

    .line 134
    .end local v6    # "output":Ljava/io/OutputStream;
    .end local v7    # "vCardFile":Ljava/io/File;
    :cond_5
    if-eqz v4, :cond_6

    .line 135
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 141
    :cond_6
    if-eqz v5, :cond_3

    .line 142
    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 144
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    goto :goto_3

    .line 137
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 141
    .restart local v3    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_3

    .line 142
    :try_start_9
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    .line 144
    :catch_3
    move-exception v3

    goto :goto_3

    .line 139
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 141
    if-eqz v5, :cond_7

    .line 142
    :try_start_a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 139
    :cond_7
    :goto_4
    throw v10

    .line 144
    :catch_4
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 128
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v5    # "output":Ljava/io/OutputStream;
    :catch_5
    move-exception v3

    .line 134
    .end local v5    # "output":Ljava/io/OutputStream;
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_5
    if-eqz v4, :cond_8

    .line 135
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 141
    :cond_8
    if-eqz v5, :cond_3

    .line 142
    :try_start_c
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_3

    .line 144
    :catch_6
    move-exception v3

    goto :goto_3

    .line 137
    :catch_7
    move-exception v3

    .line 141
    if-eqz v5, :cond_3

    .line 142
    :try_start_d
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_3

    .line 144
    :catch_8
    move-exception v3

    goto :goto_3

    .line 139
    :catchall_1
    move-exception v10

    .line 141
    if-eqz v5, :cond_9

    .line 142
    :try_start_e
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 139
    :cond_9
    :goto_6
    throw v10

    .line 144
    :catch_9
    move-exception v3

    goto :goto_6

    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_a
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 137
    .end local v3    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v3

    .line 141
    .restart local v3    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_3

    .line 142
    :try_start_f
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    goto :goto_3

    .line 144
    :catch_c
    move-exception v3

    goto :goto_3

    .line 139
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v10

    .line 141
    if-eqz v5, :cond_a

    .line 142
    :try_start_10
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    .line 139
    :cond_a
    :goto_7
    throw v10

    .line 144
    :catch_d
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 131
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v5    # "output":Ljava/io/OutputStream;
    :catchall_3
    move-exception v10

    .line 134
    .end local v5    # "output":Ljava/io/OutputStream;
    :goto_8
    if-eqz v4, :cond_b

    .line 135
    :try_start_11
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 141
    :cond_b
    if-eqz v5, :cond_c

    .line 142
    :try_start_12
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e

    .line 131
    :cond_c
    :goto_9
    throw v10

    .line 144
    :catch_e
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 137
    .end local v3    # "e":Ljava/io/IOException;
    :catch_f
    move-exception v3

    .line 141
    .restart local v3    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_c

    .line 142
    :try_start_13
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_10

    goto :goto_9

    .line 144
    :catch_10
    move-exception v3

    goto :goto_9

    .line 139
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v10

    .line 141
    if-eqz v5, :cond_d

    .line 142
    :try_start_14
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_11

    .line 139
    :cond_d
    :goto_a
    throw v10

    .line 144
    :catch_11
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_a

    .line 131
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v5    # "output":Ljava/io/OutputStream;
    .restart local v8    # "vCardFile":Ljava/io/File;
    :catchall_5
    move-exception v10

    move-object v7, v8

    .end local v8    # "vCardFile":Ljava/io/File;
    .restart local v7    # "vCardFile":Ljava/io/File;
    goto :goto_8

    .end local v5    # "output":Ljava/io/OutputStream;
    .restart local v1    # "done":Z
    .restart local v6    # "output":Ljava/io/OutputStream;
    :catchall_6
    move-exception v10

    move-object v5, v6

    .end local v6    # "output":Ljava/io/OutputStream;
    .local v5, "output":Ljava/io/OutputStream;
    goto :goto_8

    .line 125
    .end local v1    # "done":Z
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v7    # "vCardFile":Ljava/io/File;
    .local v5, "output":Ljava/io/OutputStream;
    :catch_12
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    goto/16 :goto_2

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v8    # "vCardFile":Ljava/io/File;
    :catch_13
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    move-object v7, v8

    .end local v8    # "vCardFile":Ljava/io/File;
    .restart local v7    # "vCardFile":Ljava/io/File;
    goto/16 :goto_2

    .line 128
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v7    # "vCardFile":Ljava/io/File;
    .restart local v8    # "vCardFile":Ljava/io/File;
    :catch_14
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v7, v8

    .end local v8    # "vCardFile":Ljava/io/File;
    .restart local v7    # "vCardFile":Ljava/io/File;
    goto :goto_5

    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "output":Ljava/io/OutputStream;
    .restart local v1    # "done":Z
    .restart local v6    # "output":Ljava/io/OutputStream;
    :catch_15
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "output":Ljava/io/OutputStream;
    .local v5, "output":Ljava/io/OutputStream;
    goto :goto_5
.end method

.method public static getAllVCardContactDetails(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/vcard/VCardEntry;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 290
    const/4 v2, 0x0

    .line 291
    .local v2, "contact":Lcom/android/vcard/VCardEntry;
    if-eqz p1, :cond_1

    .line 292
    const/4 v7, 0x0

    .line 294
    .local v7, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    .line 295
    .local v7, "is":Ljava/io/InputStream;
    if-eqz v7, :cond_0

    .line 296
    new-instance v8, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v8}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    .line 297
    .local v8, "vCardParser":Lcom/android/vcard/VCardParser_V21;
    new-instance v1, Lcom/android/vcard/VCardEntryConstructor;

    .line 298
    const/4 v9, 0x0

    .line 297
    invoke-direct {v1, v9}, Lcom/android/vcard/VCardEntryConstructor;-><init>(I)V

    .line 299
    .local v1, "builder":Lcom/android/vcard/VCardEntryConstructor;
    new-instance v6, Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;-><init>(Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;)V

    .line 300
    .local v6, "holder":Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;
    invoke-virtual {v1, v6}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 302
    invoke-virtual {v8, v1}, Lcom/android/vcard/VCardParser_V21;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 303
    invoke-virtual {v8, v7}, Lcom/android/vcard/VCardParser_V21;->parse(Ljava/io/InputStream;)V

    .line 304
    iget-object v9, v6, Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;->contacts:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 305
    iget-object v9, v6, Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;->contacts:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/android/vcard/VCardEntry;

    move-object v2, v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    .end local v1    # "builder":Lcom/android/vcard/VCardEntryConstructor;
    .end local v2    # "contact":Lcom/android/vcard/VCardEntry;
    .end local v6    # "holder":Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;
    .end local v8    # "vCardParser":Lcom/android/vcard/VCardParser_V21;
    :cond_0
    if-eqz v7, :cond_1

    .line 317
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 324
    .end local v7    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_0
    return-object v2

    .line 318
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    goto :goto_0

    .line 312
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v2    # "contact":Lcom/android/vcard/VCardEntry;
    :catch_1
    move-exception v5

    .line 315
    .restart local v5    # "e":Ljava/io/IOException;
    if-eqz v7, :cond_1

    .line 317
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 318
    :catch_2
    move-exception v5

    goto :goto_0

    .line 310
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 315
    .local v3, "e":Lcom/android/vcard/exception/VCardException;
    if-eqz v7, :cond_1

    .line 317
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 318
    :catch_4
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 308
    .end local v3    # "e":Lcom/android/vcard/exception/VCardException;
    .end local v5    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v4

    .line 315
    .local v4, "e":Ljava/io/FileNotFoundException;
    if-eqz v7, :cond_1

    .line 317
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_0

    .line 318
    :catch_6
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 314
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 315
    if-eqz v7, :cond_2

    .line 317
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 314
    :cond_2
    :goto_1
    throw v9

    .line 318
    :catch_7
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method public static getFormattedAddress(Lcom/android/vcard/VCardEntry$PostalData;)Ljava/lang/String;
    .locals 4
    .param p0, "postalData"    # Lcom/android/vcard/VCardEntry$PostalData;

    .prologue
    .line 399
    if-nez p0, :cond_0

    .line 400
    const-string/jumbo v2, ""

    return-object v2

    .line 403
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v0, "addressValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry$PostalData;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/conversations/util/VCardUtil;->isEmptyOrOnlyWhiteSpaces(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 406
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry$PostalData;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    :cond_1
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry$PostalData;->getExtendedAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/conversations/util/VCardUtil;->isEmptyOrOnlyWhiteSpaces(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 410
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry$PostalData;->getExtendedAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_2
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry$PostalData;->getPobox()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/conversations/util/VCardUtil;->isEmptyOrOnlyWhiteSpaces(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 414
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry$PostalData;->getPobox()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_3
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry$PostalData;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/conversations/util/VCardUtil;->isEmptyOrOnlyWhiteSpaces(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry$PostalData;->getLocalty()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/conversations/util/VCardUtil;->isEmptyOrOnlyWhiteSpaces(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 430
    :goto_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry$PostalData;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/conversations/util/VCardUtil;->isEmptyOrOnlyWhiteSpaces(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 431
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry$PostalData;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_4
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry$PostalData;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/conversations/util/VCardUtil;->isEmptyOrOnlyWhiteSpaces(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 434
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry$PostalData;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_5
    const-string/jumbo v2, "\n"

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 417
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .local v1, "postalCode":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry$PostalData;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/conversations/util/VCardUtil;->isEmptyOrOnlyWhiteSpaces(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 419
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry$PostalData;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/conversations/util/VCardUtil;->isEmptyOrOnlyWhiteSpaces(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry$PostalData;->getLocalty()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/conversations/util/VCardUtil;->isEmptyOrOnlyWhiteSpaces(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 424
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry$PostalData;->getLocalty()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/conversations/util/VCardUtil;->isEmptyOrOnlyWhiteSpaces(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 425
    invoke-virtual {p0}, Lcom/android/vcard/VCardEntry$PostalData;->getLocalty()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 422
    :cond_a
    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static getGeoPoint(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/maps/GeoPoint;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 532
    const/4 v8, 0x0

    .line 534
    .local v8, "input":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 535
    .local v8, "input":Ljava/io/InputStream;
    if-nez v8, :cond_1

    .line 536
    const/4 v15, 0x0

    .line 584
    if-eqz v8, :cond_0

    .line 585
    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 536
    :cond_0
    :goto_0
    return-object v15

    .line 587
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    goto :goto_0

    .line 538
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    const/16 v15, 0x2710

    :try_start_2
    new-array v1, v15, [B

    .line 539
    .local v1, "data":[B
    :cond_2
    const/4 v15, 0x0

    const/16 v16, 0x2710

    move/from16 v0, v16

    invoke-virtual {v8, v1, v15, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    .line 540
    new-instance v2, Ljava/lang/String;

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 541
    .local v2, "dataStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 544
    const-string/jumbo v15, "GEO:"

    invoke-virtual {v2, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 545
    .local v7, "index":I
    if-ltz v7, :cond_2

    .line 548
    const-string/jumbo v15, "\n"

    invoke-virtual {v2, v15, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 549
    .local v5, "end":I
    const/4 v15, -0x1

    if-ne v5, v15, :cond_3

    .line 550
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 553
    :cond_3
    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 554
    .local v6, "geoTag":Ljava/lang/String;
    const/16 v15, 0x3a

    invoke-virtual {v6, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 555
    .local v14, "start":I
    if-ltz v14, :cond_2

    .line 558
    add-int/lit8 v14, v14, 0x1

    .line 559
    invoke-virtual {v6, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 560
    const/16 v15, 0x2c

    invoke-virtual {v6, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 562
    .local v13, "separator":I
    if-gez v13, :cond_4

    .line 563
    const/16 v15, 0x3b

    invoke-virtual {v6, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 566
    :cond_4
    if-ltz v13, :cond_2

    .line 569
    const/4 v15, 0x0

    invoke-virtual {v6, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 570
    .local v10, "latitudeString":Ljava/lang/String;
    add-int/lit8 v15, v13, 0x1

    .line 571
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v16

    .line 570
    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 572
    .local v12, "longitudeString":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    const v16, 0x49742400    # 1000000.0f

    mul-float v15, v15, v16

    float-to-int v9, v15

    .line 573
    .local v9, "latitude":I
    invoke-static {v12}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    .line 574
    const v16, 0x49742400    # 1000000.0f

    .line 573
    mul-float v15, v15, v16

    float-to-int v11, v15

    .line 576
    .local v11, "longitude":I
    new-instance v15, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v15, v9, v11}, Lcom/google/android/maps/GeoPoint;-><init>(II)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 584
    if-eqz v8, :cond_5

    .line 585
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 576
    :cond_5
    :goto_1
    return-object v15

    .line 587
    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 584
    .end local v2    # "dataStr":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "end":I
    .end local v6    # "geoTag":Ljava/lang/String;
    .end local v7    # "index":I
    .end local v9    # "latitude":I
    .end local v10    # "latitudeString":Ljava/lang/String;
    .end local v11    # "longitude":I
    .end local v12    # "longitudeString":Ljava/lang/String;
    .end local v13    # "separator":I
    .end local v14    # "start":I
    :cond_6
    if-eqz v8, :cond_7

    .line 585
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 591
    .end local v1    # "data":[B
    .end local v8    # "input":Ljava/io/InputStream;
    :cond_7
    :goto_2
    const/4 v15, 0x0

    return-object v15

    .line 587
    .restart local v1    # "data":[B
    .restart local v8    # "input":Ljava/io/InputStream;
    :catch_2
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 580
    .end local v1    # "data":[B
    .end local v4    # "e":Ljava/io/IOException;
    .end local v8    # "input":Ljava/io/InputStream;
    :catch_3
    move-exception v4

    .line 584
    .restart local v4    # "e":Ljava/io/IOException;
    if-eqz v8, :cond_7

    .line 585
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 587
    :catch_4
    move-exception v4

    goto :goto_2

    .line 578
    .end local v4    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 584
    .local v3, "e":Ljava/io/FileNotFoundException;
    if-eqz v8, :cond_7

    .line 585
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_2

    .line 587
    :catch_6
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 582
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v15

    .line 584
    if-eqz v8, :cond_8

    .line 585
    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 582
    :cond_8
    :goto_3
    throw v15

    .line 587
    :catch_7
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_3
.end method

.method public static getVCardContactName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 212
    const/4 v4, 0x0

    .line 214
    .local v4, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 216
    .local v3, "input":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 217
    .local v3, "input":Ljava/io/InputStream;
    if-eqz v3, :cond_0

    .line 218
    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/sonyericsson/conversations/util/VCardUtil;->getVCardContactNameFromInputStream(Ljava/io/InputStream;Z)Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;

    move-result-object v2

    .line 219
    .local v2, "info":Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;
    if-eqz v2, :cond_0

    .line 220
    iget-object v4, v2, Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;->mName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    .end local v2    # "info":Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_1

    .line 228
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 234
    .end local v3    # "input":Ljava/io/InputStream;
    :cond_1
    :goto_0
    return-object v4

    .line 229
    .restart local v3    # "input":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    .line 223
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "name":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 226
    .local v0, "e":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_1

    .line 228
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 229
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 225
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 226
    if-eqz v3, :cond_2

    .line 228
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 225
    :cond_2
    :goto_1
    throw v5

    .line 229
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method private static getVCardContactNameFromInputStream(Ljava/io/InputStream;Z)Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;
    .locals 14
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "getPhoto"    # Z

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 249
    const/4 v6, 0x0

    .line 250
    .local v6, "info":Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;
    new-instance v11, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v11}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    .line 251
    .local v11, "vCardParser":Lcom/android/vcard/VCardParser_V21;
    new-instance v0, Lcom/android/vcard/VCardEntryConstructor;

    invoke-direct {v0, v12}, Lcom/android/vcard/VCardEntryConstructor;-><init>(I)V

    .line 252
    .local v0, "builder":Lcom/android/vcard/VCardEntryConstructor;
    new-instance v5, Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;

    invoke-direct {v5, v13}, Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;-><init>(Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;)V

    .line 253
    .local v5, "holder":Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;
    invoke-virtual {v0, v5}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 255
    :try_start_0
    invoke-virtual {v11, v0}, Lcom/android/vcard/VCardParser_V21;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 256
    invoke-virtual {v11, p0}, Lcom/android/vcard/VCardParser_V21;->parse(Ljava/io/InputStream;)V

    .line 257
    iget-object v12, v5, Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;->contacts:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_1

    .line 258
    iget-object v12, v5, Lcom/sonyericsson/conversations/util/VCardUtil$EntryHolder;->contacts:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardEntry;

    .line 260
    .local v1, "contact":Lcom/android/vcard/VCardEntry;
    invoke-virtual {v1}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    .line 262
    .local v8, "name":Ljava/lang/String;
    const/4 v9, 0x0

    .line 263
    .local v9, "photo":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 264
    invoke-virtual {v1}, Lcom/android/vcard/VCardEntry;->getPhotoList()Ljava/util/List;

    move-result-object v10

    .line 265
    .local v10, "photoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/vcard/VCardEntry$PhotoData;>;"
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_0

    .line 266
    const/4 v12, 0x0

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/vcard/VCardEntry$PhotoData;

    invoke-virtual {v12}, Lcom/android/vcard/VCardEntry$PhotoData;->getBytes()[B

    move-result-object v2

    .line 267
    .local v2, "data":[B
    array-length v12, v2

    const/4 v13, 0x0

    invoke-static {v2, v13, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 271
    .end local v2    # "data":[B
    .end local v9    # "photo":Landroid/graphics/Bitmap;
    .end local v10    # "photoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/vcard/VCardEntry$PhotoData;>;"
    :cond_0
    new-instance v7, Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;

    invoke-direct {v7, v8, v9}, Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_1

    .local v7, "info":Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;
    move-object v6, v7

    .line 278
    .end local v1    # "contact":Lcom/android/vcard/VCardEntry;
    .end local v6    # "info":Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;
    .end local v7    # "info":Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;
    .end local v8    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v6

    .line 273
    .restart local v6    # "info":Lcom/sonyericsson/conversations/util/VCardUtil$ContactInfo;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    goto :goto_0

    .line 275
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .local v3, "e":Lcom/android/vcard/exception/VCardException;
    goto :goto_0
.end method

.method private static isEmptyOrOnlyWhiteSpaces(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 440
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isMultipleContactsVCard(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vCardUri"    # Landroid/net/Uri;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 355
    const/4 v6, 0x0

    .line 357
    .local v6, "input":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 358
    .local v6, "input":Ljava/io/InputStream;
    if-eqz v6, :cond_5

    .line 360
    const/16 v8, 0x2710

    new-array v1, v8, [B

    .line 361
    .local v1, "data":[B
    const/4 v8, 0x0

    const/16 v9, 0x2710

    invoke-virtual {v6, v1, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 362
    .local v0, "bytesRead":I
    if-eq v0, v10, :cond_5

    .line 363
    new-instance v2, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 364
    .local v2, "dataStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 365
    const-string/jumbo v8, "BEGIN:VCARD"

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 366
    .local v5, "index":I
    if-ne v5, v10, :cond_1

    .line 387
    if-eqz v6, :cond_0

    .line 389
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 368
    :cond_0
    :goto_0
    return v11

    .line 390
    :catch_0
    move-exception v7

    .local v7, "io":Ljava/io/IOException;
    goto :goto_0

    .line 370
    .end local v7    # "io":Ljava/io/IOException;
    :cond_1
    :try_start_2
    const-string/jumbo v8, "BEGIN:VCARD"

    const-string/jumbo v9, "BEGIN:VCARD"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    .line 371
    if-ne v5, v10, :cond_3

    .line 387
    if-eqz v6, :cond_2

    .line 389
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 373
    :cond_2
    :goto_1
    return v12

    .line 390
    :catch_1
    move-exception v7

    .restart local v7    # "io":Ljava/io/IOException;
    goto :goto_1

    .line 387
    .end local v7    # "io":Ljava/io/IOException;
    :cond_3
    if-eqz v6, :cond_4

    .line 389
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 376
    :cond_4
    :goto_2
    return v11

    .line 390
    :catch_2
    move-exception v7

    .restart local v7    # "io":Ljava/io/IOException;
    goto :goto_2

    .line 387
    .end local v0    # "bytesRead":I
    .end local v1    # "data":[B
    .end local v2    # "dataStr":Ljava/lang/String;
    .end local v5    # "index":I
    .end local v7    # "io":Ljava/io/IOException;
    :cond_5
    if-eqz v6, :cond_6

    .line 389
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 395
    .end local v6    # "input":Ljava/io/InputStream;
    :cond_6
    :goto_3
    return v11

    .line 390
    .restart local v6    # "input":Ljava/io/InputStream;
    :catch_3
    move-exception v7

    .restart local v7    # "io":Ljava/io/IOException;
    goto :goto_3

    .line 384
    .end local v6    # "input":Ljava/io/InputStream;
    .end local v7    # "io":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 387
    .local v4, "e":Ljava/io/IOException;
    if-eqz v6, :cond_6

    .line 389
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    .line 390
    :catch_5
    move-exception v7

    .restart local v7    # "io":Ljava/io/IOException;
    goto :goto_3

    .line 382
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "io":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 387
    .local v3, "e":Ljava/io/FileNotFoundException;
    if-eqz v6, :cond_6

    .line 389
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_3

    .line 390
    :catch_7
    move-exception v7

    .restart local v7    # "io":Ljava/io/IOException;
    goto :goto_3

    .line 386
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v7    # "io":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 387
    if-eqz v6, :cond_7

    .line 389
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 386
    :cond_7
    :goto_4
    throw v8

    .line 390
    :catch_8
    move-exception v7

    .restart local v7    # "io":Ljava/io/IOException;
    goto :goto_4
.end method

.method public static isVCardLocationObject(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 489
    const/4 v6, 0x0

    .line 490
    .local v6, "input":Ljava/io/InputStream;
    sget-object v7, Lcom/sonyericsson/conversations/util/VCardUtil;->isLocationCache:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 491
    sget-object v7, Lcom/sonyericsson/conversations/util/VCardUtil;->isLocationCache:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    return v7

    .line 494
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 495
    .local v6, "input":Ljava/io/InputStream;
    if-nez v6, :cond_2

    .line 519
    if-eqz v6, :cond_1

    .line 520
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 496
    :cond_1
    :goto_0
    return v9

    .line 522
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    goto :goto_0

    .line 498
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    const/16 v7, 0x2710

    :try_start_2
    new-array v1, v7, [B

    .line 499
    .local v1, "data":[B
    const/4 v7, 0x0

    const/16 v8, 0x2710

    invoke-virtual {v6, v1, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 500
    .local v0, "bytesRead":I
    :goto_1
    if-eq v0, v10, :cond_5

    .line 501
    new-instance v2, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 502
    .local v2, "dataStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 503
    const-string/jumbo v7, "X-VZW-NGM-LOC:"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 504
    .local v5, "index":I
    if-le v5, v10, :cond_4

    .line 505
    sget-object v7, Lcom/sonyericsson/conversations/util/VCardUtil;->isLocationCache:Ljava/util/HashMap;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 519
    if-eqz v6, :cond_3

    .line 520
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 506
    :cond_3
    :goto_2
    return v11

    .line 522
    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 509
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "index":I
    :cond_4
    const/4 v7, 0x0

    const/16 v8, 0x2710

    :try_start_4
    invoke-virtual {v6, v1, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_1

    .line 512
    .end local v2    # "dataStr":Ljava/lang/String;
    :cond_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 519
    if-eqz v6, :cond_6

    .line 520
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 526
    .end local v0    # "bytesRead":I
    .end local v1    # "data":[B
    .end local v6    # "input":Ljava/io/InputStream;
    :cond_6
    :goto_3
    sget-object v7, Lcom/sonyericsson/conversations/util/VCardUtil;->isLocationCache:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    return v9

    .line 522
    .restart local v0    # "bytesRead":I
    .restart local v1    # "data":[B
    .restart local v6    # "input":Ljava/io/InputStream;
    :catch_2
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 515
    .end local v0    # "bytesRead":I
    .end local v1    # "data":[B
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "input":Ljava/io/InputStream;
    :catch_3
    move-exception v4

    .line 519
    .restart local v4    # "e":Ljava/io/IOException;
    if-eqz v6, :cond_6

    .line 520
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 522
    :catch_4
    move-exception v4

    goto :goto_3

    .line 513
    .end local v4    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 519
    .local v3, "e":Ljava/io/FileNotFoundException;
    if-eqz v6, :cond_6

    .line 520
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_3

    .line 522
    :catch_6
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 517
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 519
    if-eqz v6, :cond_7

    .line 520
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 517
    :cond_7
    :goto_4
    throw v7

    .line 522
    :catch_7
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_4
.end method

.method public static isVCardMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 601
    const-string/jumbo v0, "text/x-vCard"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 602
    const-string/jumbo v0, "text/vcard"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 601
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static saveContact(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "vCardUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 329
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "text/x-vCard"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {p0, p1}, Lcom/sonyericsson/conversations/util/VCardUtil;->saveContactInternal(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private static saveContactInternal(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vCardUri"    # Landroid/net/Uri;

    .prologue
    .line 339
    if-eqz p1, :cond_0

    .line 340
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/conversations/ui/SaveVCardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 341
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 342
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 338
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
