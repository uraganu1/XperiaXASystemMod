.class public Lcom/sonymobile/template/sms/TextTemplateManagerImpl;
.super Ljava/lang/Object;
.source "TextTemplateManagerImpl.java"

# interfaces
.implements Lcom/sonymobile/template/sms/TextTemplateManager;


# static fields
.field private static final NO_TEMPLATES:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMode:I

.field private mNewTemplates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->NO_TEMPLATES:[Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method

.method private addAllTemplateNodes(Lorg/w3c/dom/Document;Ljava/util/List;Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .param p3, "rootElt"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;",
            "Lorg/w3c/dom/Element;",
            ")V"
        }
    .end annotation

    .prologue
    .line 185
    .local p2, "templates":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/template/sms/TextTemplate;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "template$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/template/sms/TextTemplate;

    .line 186
    .local v0, "template":Lcom/sonymobile/template/sms/TextTemplate;
    invoke-direct {p0, p1, v0, p3}, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->addTextTemplateNode(Lorg/w3c/dom/Document;Lcom/sonymobile/template/sms/TextTemplate;Lorg/w3c/dom/Element;)V

    goto :goto_0

    .line 184
    .end local v0    # "template":Lcom/sonymobile/template/sms/TextTemplate;
    :cond_0
    return-void
.end method

.method private addDefaultTemplateNodes(Lorg/w3c/dom/Document;[Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .param p2, "defaultTemplates"    # [Ljava/lang/String;
    .param p3, "rootElt"    # Lorg/w3c/dom/Element;

    .prologue
    .line 175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 176
    new-instance v1, Lcom/sonymobile/template/sms/TextTemplate;

    invoke-direct {v1}, Lcom/sonymobile/template/sms/TextTemplate;-><init>()V

    .line 177
    .local v1, "templates":Lcom/sonymobile/template/sms/TextTemplate;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/sonymobile/template/sms/TextTemplate;->setId(I)V

    .line 178
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/sonymobile/template/sms/TextTemplate;->setSid(I)V

    .line 179
    invoke-direct {p0, p1, v1, p3}, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->addTextTemplateNode(Lorg/w3c/dom/Document;Lcom/sonymobile/template/sms/TextTemplate;Lorg/w3c/dom/Element;)V

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    .end local v1    # "templates":Lcom/sonymobile/template/sms/TextTemplate;
    :cond_0
    return-void
.end method

.method private addTemplateNodes(Lorg/w3c/dom/Document;)V
    .locals 3
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    .line 227
    const-string/jumbo v2, "text_template"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 228
    .local v1, "rootElt":Lorg/w3c/dom/Element;
    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 230
    iget v2, p0, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->mMode:I

    if-nez v2, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->loadDefaultTextTemplates()[Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "defaultTemplates":[Ljava/lang/String;
    invoke-direct {p0, p1, v0, v1}, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->addDefaultTemplateNodes(Lorg/w3c/dom/Document;[Ljava/lang/String;Lorg/w3c/dom/Element;)V

    .line 226
    .end local v0    # "defaultTemplates":[Ljava/lang/String;
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->mNewTemplates:Ljava/util/List;

    invoke-direct {p0, p1, v2, v1}, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->addAllTemplateNodes(Lorg/w3c/dom/Document;Ljava/util/List;Lorg/w3c/dom/Element;)V

    goto :goto_0
.end method

.method private addTextTemplateNode(Lorg/w3c/dom/Document;Lcom/sonymobile/template/sms/TextTemplate;Lorg/w3c/dom/Element;)V
    .locals 7
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .param p2, "template"    # Lcom/sonymobile/template/sms/TextTemplate;
    .param p3, "rootElt"    # Lorg/w3c/dom/Element;

    .prologue
    .line 191
    const-string/jumbo v6, "template"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 193
    .local v2, "eltTemplate":Lorg/w3c/dom/Element;
    const-string/jumbo v6, "id"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 194
    .local v0, "attr":Lorg/w3c/dom/Attr;
    invoke-virtual {p2}, Lcom/sonymobile/template/sms/TextTemplate;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 196
    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 198
    invoke-virtual {p2}, Lcom/sonymobile/template/sms/TextTemplate;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p2}, Lcom/sonymobile/template/sms/TextTemplate;->isUserDefinedTemplate()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 199
    const-string/jumbo v6, "text"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 200
    .local v3, "eltText":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/sonymobile/template/sms/TextTemplate;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    .line 201
    .local v5, "txtText":Lorg/w3c/dom/Text;
    if-eqz v5, :cond_0

    .line 202
    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 204
    :cond_0
    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 207
    .end local v3    # "eltText":Lorg/w3c/dom/Element;
    .end local v5    # "txtText":Lorg/w3c/dom/Text;
    :cond_1
    invoke-virtual {p2}, Lcom/sonymobile/template/sms/TextTemplate;->getSid()I

    move-result v6

    if-eqz v6, :cond_3

    .line 208
    const-string/jumbo v6, "sid"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 209
    .local v1, "eltSid":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lcom/sonymobile/template/sms/TextTemplate;->getSid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v4

    .line 210
    .local v4, "txtSid":Lorg/w3c/dom/Text;
    if-eqz v4, :cond_2

    .line 211
    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 213
    :cond_2
    invoke-interface {v2, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 216
    .end local v1    # "eltSid":Lorg/w3c/dom/Element;
    .end local v4    # "txtSid":Lorg/w3c/dom/Text;
    :cond_3
    invoke-interface {p3, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 190
    return-void
.end method

.method private createDocument(Landroid/content/Context;Ljava/lang/String;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 239
    const/4 v10, 0x0

    .line 240
    .local v10, "fos":Ljava/io/FileOutputStream;
    const/4 v11, 0x0

    .line 243
    .local v11, "pw":Ljava/io/PrintWriter;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v9

    .line 244
    .local v9, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 245
    .local v3, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    .line 248
    .local v4, "doc":Lorg/w3c/dom/Document;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->addTemplateNodes(Lorg/w3c/dom/Document;)V

    .line 250
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v15

    .line 251
    .local v15, "tf":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v15}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v16

    .line 253
    .local v16, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v14, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v14, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 254
    .local v14, "source":Ljavax/xml/transform/dom/DOMSource;
    const-string/jumbo v17, "encoding"

    const-string/jumbo v18, "utf-8"

    invoke-virtual/range {v16 .. v18}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string/jumbo v17, "indent"

    const-string/jumbo v18, "no"

    invoke-virtual/range {v16 .. v18}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v10

    .line 259
    .local v10, "fos":Ljava/io/FileOutputStream;
    new-instance v12, Ljava/io/PrintWriter;

    invoke-direct {v12, v10}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    .local v12, "pw":Ljava/io/PrintWriter;
    :try_start_1
    new-instance v13, Ljavax/xml/transform/stream/StreamResult;

    .end local v11    # "pw":Ljava/io/PrintWriter;
    invoke-direct {v13, v12}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 261
    .local v13, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v13}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 270
    if-eqz v10, :cond_0

    .line 272
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 277
    :cond_0
    :goto_0
    if-eqz v12, :cond_1

    .line 278
    invoke-virtual {v12}, Ljava/io/PrintWriter;->close()V

    :cond_1
    move-object v11, v12

    .line 238
    .end local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "pw":Ljava/io/PrintWriter;
    .end local v13    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v14    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v15    # "tf":Ljavax/xml/transform/TransformerFactory;
    .end local v16    # "transformer":Ljavax/xml/transform/Transformer;
    :cond_2
    :goto_1
    return-void

    .line 273
    .restart local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "pw":Ljava/io/PrintWriter;
    .restart local v13    # "result":Ljavax/xml/transform/stream/StreamResult;
    .restart local v14    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v15    # "tf":Ljavax/xml/transform/TransformerFactory;
    .restart local v16    # "transformer":Ljavax/xml/transform/Transformer;
    :catch_0
    move-exception v6

    .line 274
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 267
    .end local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "pw":Ljava/io/PrintWriter;
    .end local v13    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v14    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v15    # "tf":Ljavax/xml/transform/TransformerFactory;
    .end local v16    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v11    # "pw":Ljava/io/PrintWriter;
    :catch_1
    move-exception v8

    .line 268
    .end local v11    # "pw":Ljava/io/PrintWriter;
    .local v8, "e":Ljavax/xml/transform/TransformerException;
    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljavax/xml/transform/TransformerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 270
    if-eqz v10, :cond_3

    .line 272
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 277
    :cond_3
    :goto_3
    if-eqz v11, :cond_2

    .line 278
    invoke-virtual {v11}, Ljava/io/PrintWriter;->close()V

    goto :goto_1

    .line 273
    :catch_2
    move-exception v6

    .line 274
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 265
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "e":Ljavax/xml/transform/TransformerException;
    .restart local v11    # "pw":Ljava/io/PrintWriter;
    :catch_3
    move-exception v5

    .line 266
    .end local v11    # "pw":Ljava/io/PrintWriter;
    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 270
    if-eqz v10, :cond_4

    .line 272
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 277
    :cond_4
    :goto_5
    if-eqz v11, :cond_2

    .line 278
    invoke-virtual {v11}, Ljava/io/PrintWriter;->close()V

    goto :goto_1

    .line 273
    :catch_4
    move-exception v6

    .line 274
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 263
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v11    # "pw":Ljava/io/PrintWriter;
    :catch_5
    move-exception v7

    .line 264
    .end local v11    # "pw":Ljava/io/PrintWriter;
    .local v7, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_6
    :try_start_7
    invoke-virtual {v7}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 270
    if-eqz v10, :cond_5

    .line 272
    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 277
    :cond_5
    :goto_7
    if-eqz v11, :cond_2

    .line 278
    invoke-virtual {v11}, Ljava/io/PrintWriter;->close()V

    goto :goto_1

    .line 273
    :catch_6
    move-exception v6

    .line 274
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 269
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catchall_0
    move-exception v17

    .line 270
    :goto_8
    if-eqz v10, :cond_6

    .line 272
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 277
    :cond_6
    :goto_9
    if-eqz v11, :cond_7

    .line 278
    invoke-virtual {v11}, Ljava/io/PrintWriter;->close()V

    .line 269
    :cond_7
    throw v17

    .line 273
    :catch_7
    move-exception v6

    .line 274
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 269
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "pw":Ljava/io/PrintWriter;
    .restart local v14    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v15    # "tf":Ljavax/xml/transform/TransformerFactory;
    .restart local v16    # "transformer":Ljavax/xml/transform/Transformer;
    :catchall_1
    move-exception v17

    move-object v11, v12

    .end local v12    # "pw":Ljava/io/PrintWriter;
    .local v11, "pw":Ljava/io/PrintWriter;
    goto :goto_8

    .line 263
    .end local v11    # "pw":Ljava/io/PrintWriter;
    .restart local v12    # "pw":Ljava/io/PrintWriter;
    :catch_8
    move-exception v7

    .restart local v7    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    move-object v11, v12

    .end local v12    # "pw":Ljava/io/PrintWriter;
    .restart local v11    # "pw":Ljava/io/PrintWriter;
    goto :goto_6

    .line 265
    .end local v7    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v11    # "pw":Ljava/io/PrintWriter;
    .restart local v12    # "pw":Ljava/io/PrintWriter;
    :catch_9
    move-exception v5

    .restart local v5    # "e":Ljava/io/FileNotFoundException;
    move-object v11, v12

    .end local v12    # "pw":Ljava/io/PrintWriter;
    .restart local v11    # "pw":Ljava/io/PrintWriter;
    goto :goto_4

    .line 267
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v11    # "pw":Ljava/io/PrintWriter;
    .restart local v12    # "pw":Ljava/io/PrintWriter;
    :catch_a
    move-exception v8

    .restart local v8    # "e":Ljavax/xml/transform/TransformerException;
    move-object v11, v12

    .end local v12    # "pw":Ljava/io/PrintWriter;
    .restart local v11    # "pw":Ljava/io/PrintWriter;
    goto :goto_2
.end method

.method private fileRename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;

    .prologue
    .line 320
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    .local v1, "oldFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    .local v0, "newFile":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    return v2
.end method

.method private getDocument(Landroid/content/Context;Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 284
    const/4 v2, 0x0

    .line 285
    .local v2, "doc":Lorg/w3c/dom/Document;
    const/4 v6, 0x0

    .line 287
    .local v6, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 288
    .local v1, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 289
    .local v0, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, "filePath":Ljava/lang/String;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    .end local v6    # "is":Ljava/io/InputStream;
    .local v7, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 299
    .local v2, "doc":Lorg/w3c/dom/Document;
    if-eqz v7, :cond_0

    .line 301
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v6, v7

    .line 307
    .end local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v7    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_1
    return-object v2

    .line 302
    .restart local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    .restart local v4    # "filePath":Ljava/lang/String;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 303
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 296
    .end local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v7    # "is":Ljava/io/InputStream;
    .local v2, "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v5

    .line 297
    .end local v6    # "is":Ljava/io/InputStream;
    .local v5, "ioe":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 299
    if-eqz v6, :cond_1

    .line 301
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 302
    :catch_2
    move-exception v3

    .line 303
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 294
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "ioe":Ljava/io/IOException;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v9

    .line 295
    .end local v6    # "is":Ljava/io/InputStream;
    .local v9, "saxe":Lorg/xml/sax/SAXException;
    :goto_3
    :try_start_5
    invoke-virtual {v9}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 299
    if-eqz v6, :cond_1

    .line 301
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 302
    :catch_4
    move-exception v3

    .line 303
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 292
    .end local v3    # "e":Ljava/io/IOException;
    .end local v9    # "saxe":Lorg/xml/sax/SAXException;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catch_5
    move-exception v8

    .line 293
    .end local v6    # "is":Ljava/io/InputStream;
    .local v8, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_4
    :try_start_7
    invoke-virtual {v8}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 299
    if-eqz v6, :cond_1

    .line 301
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_1

    .line 302
    :catch_6
    move-exception v3

    .line 303
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 298
    .end local v3    # "e":Ljava/io/IOException;
    .end local v8    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :catchall_0
    move-exception v10

    .line 299
    :goto_5
    if-eqz v6, :cond_2

    .line 301
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 298
    :cond_2
    :goto_6
    throw v10

    .line 302
    :catch_7
    move-exception v3

    .line 303
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 298
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4    # "filePath":Ljava/lang/String;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    goto :goto_5

    .line 292
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_8
    move-exception v8

    .restart local v8    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_4

    .line 294
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v8    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_9
    move-exception v9

    .restart local v9    # "saxe":Lorg/xml/sax/SAXException;
    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 296
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v9    # "saxe":Lorg/xml/sax/SAXException;
    .restart local v7    # "is":Ljava/io/InputStream;
    :catch_a
    move-exception v5

    .restart local v5    # "ioe":Ljava/io/IOException;
    move-object v6, v7

    .end local v7    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    goto :goto_2
.end method

.method private getTemplateDocument(Landroid/content/Context;Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->isFileExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->createDocument(Landroid/content/Context;Ljava/lang/String;)V

    .line 223
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->getDocument(Landroid/content/Context;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method private isFileExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 311
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    const/4 v1, 0x1

    return v1

    .line 315
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private loadDefaultTextTemplates()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 128
    const/high16 v1, 0x7f100000

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadTextTemplateList()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v7, "templateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/template/sms/TextTemplate;>;"
    iget-object v10, p0, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "message_text_template.xml"

    invoke-direct {p0, v10, v11}, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->getTemplateDocument(Landroid/content/Context;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 139
    .local v2, "document":Lorg/w3c/dom/Document;
    if-eqz v2, :cond_3

    .line 141
    const-string/jumbo v10, "template"

    .line 140
    invoke-interface {v2, v10}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 143
    .local v9, "templates":Lorg/w3c/dom/NodeList;
    if-eqz v9, :cond_3

    .line 144
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 145
    new-instance v6, Lcom/sonymobile/template/sms/TextTemplate;

    invoke-direct {v6}, Lcom/sonymobile/template/sms/TextTemplate;-><init>()V

    .line 146
    .local v6, "template":Lcom/sonymobile/template/sms/TextTemplate;
    invoke-interface {v9, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 148
    .local v8, "templateNode":Lorg/w3c/dom/Element;
    const-string/jumbo v10, "id"

    .line 147
    invoke-interface {v8, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/sonymobile/template/sms/TextTemplate;->setId(I)V

    .line 149
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 150
    .local v1, "childNodes":Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v4, v10, :cond_2

    .line 151
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 152
    .local v5, "node":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    move-object v0, v5

    .line 153
    check-cast v0, Lorg/w3c/dom/Element;

    .line 154
    .local v0, "childNode":Lorg/w3c/dom/Element;
    const-string/jumbo v10, "sid"

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 155
    invoke-interface {v0}, Lorg/w3c/dom/Element;->hasChildNodes()Z

    move-result v10

    .line 154
    if-eqz v10, :cond_1

    .line 156
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/sonymobile/template/sms/TextTemplate;->setSid(I)V

    .line 150
    .end local v0    # "childNode":Lorg/w3c/dom/Element;
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 158
    .restart local v0    # "childNode":Lorg/w3c/dom/Element;
    :cond_1
    const-string/jumbo v10, "text"

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 160
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/sonymobile/template/sms/TextTemplate;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 164
    .end local v0    # "childNode":Lorg/w3c/dom/Element;
    .end local v5    # "node":Lorg/w3c/dom/Node;
    :cond_2
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    .end local v1    # "childNodes":Lorg/w3c/dom/NodeList;
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v6    # "template":Lcom/sonymobile/template/sms/TextTemplate;
    .end local v8    # "templateNode":Lorg/w3c/dom/Element;
    .end local v9    # "templates":Lorg/w3c/dom/NodeList;
    :cond_3
    return-object v7
.end method


# virtual methods
.method public loadAllTexTemplate()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 73
    iput v4, p0, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->mMode:I

    .line 74
    invoke-direct {p0}, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->loadTextTemplateList()Ljava/util/ArrayList;

    move-result-object v1

    .line 75
    .local v1, "documentTemplates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/template/sms/TextTemplate;>;"
    const/4 v0, 0x0

    .line 76
    .local v0, "defaultTemplates":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->loadDefaultTextTemplates()[Ljava/lang/String;

    move-result-object v0

    .line 80
    .end local v0    # "defaultTemplates":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 81
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/template/sms/TextTemplate;

    .line 84
    .local v3, "template":Lcom/sonymobile/template/sms/TextTemplate;
    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v3}, Lcom/sonymobile/template/sms/TextTemplate;->getSid()I

    move-result v4

    if-eqz v4, :cond_1

    .line 86
    invoke-virtual {v3}, Lcom/sonymobile/template/sms/TextTemplate;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 84
    if-eqz v4, :cond_1

    .line 87
    invoke-virtual {v3}, Lcom/sonymobile/template/sms/TextTemplate;->getSid()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/template/sms/TextTemplate;->setText(Ljava/lang/String;)V

    .line 80
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sonymobile/template/sms/TextTemplate;->setAsUserDefinedTemplate(Z)V

    goto :goto_1

    .line 94
    .end local v3    # "template":Lcom/sonymobile/template/sms/TextTemplate;
    :cond_2
    return-object v1
.end method

.method public saveAllTextTemplate(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "templates":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/template/sms/TextTemplate;>;"
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->mMode:I

    .line 103
    iput-object p1, p0, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->mNewTemplates:Ljava/util/List;

    .line 104
    iget-object v0, p0, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "message_text_template_bak.xml"

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->createDocument(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "message_text_template_bak.xml"

    const-string/jumbo v2, "message_text_template.xml"

    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/template/sms/TextTemplateManagerImpl;->fileRename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 101
    return-void
.end method
