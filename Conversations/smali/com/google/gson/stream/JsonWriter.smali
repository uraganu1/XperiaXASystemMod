.class public Lcom/google/gson/stream/JsonWriter;
.super Ljava/lang/Object;
.source "JsonWriter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

.field private static final REPLACEMENT_CHARS:[Ljava/lang/String;


# instance fields
.field private deferredName:Ljava/lang/String;

.field private htmlSafe:Z

.field private indent:Ljava/lang/String;

.field private lenient:Z

.field private final out:Ljava/io/Writer;

.field private separator:Ljava/lang/String;

.field private serializeNulls:Z

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v1, 0x80

    .line 145
    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x1f

    .line 146
    if-le v0, v1, :cond_0

    .line 149
    sget-object v1, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x22

    const-string/jumbo v3, "\\\""

    aput-object v3, v1, v2

    .line 150
    sget-object v1, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x5c

    const-string/jumbo v3, "\\\\"

    aput-object v3, v1, v2

    .line 151
    sget-object v1, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x9

    const-string/jumbo v3, "\\t"

    aput-object v3, v1, v2

    .line 152
    sget-object v1, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x8

    const-string/jumbo v3, "\\b"

    aput-object v3, v1, v2

    .line 153
    sget-object v1, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0xa

    const-string/jumbo v3, "\\n"

    aput-object v3, v1, v2

    .line 154
    sget-object v1, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0xd

    const-string/jumbo v3, "\\r"

    aput-object v3, v1, v2

    .line 155
    sget-object v1, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0xc

    const-string/jumbo v3, "\\f"

    aput-object v3, v1, v2

    .line 156
    sget-object v1, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sput-object v1, Lcom/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 157
    sget-object v1, Lcom/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x3c

    const-string/jumbo v3, "\\u003c"

    aput-object v3, v1, v2

    .line 158
    sget-object v1, Lcom/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x3e

    const-string/jumbo v3, "\\u003e"

    aput-object v3, v1, v2

    .line 159
    sget-object v1, Lcom/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x26

    const-string/jumbo v3, "\\u0026"

    aput-object v3, v1, v2

    .line 160
    sget-object v1, Lcom/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x3d

    const-string/jumbo v3, "\\u003d"

    aput-object v3, v1, v2

    .line 161
    sget-object v1, Lcom/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v2, 0x27

    const-string/jumbo v3, "\\u0027"

    aput-object v3, v1, v2

    .line 162
    return-void

    .line 147
    :cond_0
    sget-object v1, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const-string/jumbo v2, "\\u%04x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 167
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    const/4 v0, 0x0

    .line 168
    iput v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    const/4 v0, 0x6

    .line 170
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->push(I)V

    const-string/jumbo v0, ":"

    .line 182
    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    .line 198
    if-eqz p1, :cond_0

    .line 201
    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 202
    return-void

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private beforeName()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 597
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->peek()I

    move-result v0

    .local v0, "context":I
    const/4 v1, 0x5

    .line 598
    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    .line 600
    if-ne v0, v1, :cond_1

    .line 603
    :goto_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->newline()V

    const/4 v1, 0x4

    .line 604
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonWriter;->replaceTop(I)V

    .line 605
    return-void

    .line 599
    :cond_0
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 601
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Nesting problem."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private beforeValue(Z)V
    .locals 2
    .param p1, "root"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 617
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->peek()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 648
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    :pswitch_1
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    if-eqz v0, :cond_1

    .line 625
    :pswitch_2
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x7

    .line 629
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->replaceTop(I)V

    .line 650
    :goto_0
    return-void

    .line 620
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_2
    if-nez p1, :cond_0

    .line 626
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JSON must start with an array or an object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    const/4 v0, 0x2

    .line 633
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->replaceTop(I)V

    .line 634
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->newline()V

    goto :goto_0

    .line 638
    :pswitch_4
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 639
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->newline()V

    goto :goto_0

    .line 643
    :pswitch_5
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    const/4 v0, 0x5

    .line 644
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->replaceTop(I)V

    goto :goto_0

    .line 617
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private close(IILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;
    .locals 4
    .param p1, "empty"    # I
    .param p2, "nonempty"    # I
    .param p3, "closeBracket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->peek()I

    move-result v0

    .line 338
    .local v0, "context":I
    if-ne v0, p2, :cond_1

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 345
    iget v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 346
    if-eq v0, p2, :cond_3

    .line 349
    :goto_0
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 350
    return-object p0

    .line 338
    :cond_1
    if-eq v0, p1, :cond_0

    .line 339
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Nesting problem."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Dangling name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 347
    :cond_3
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->newline()V

    goto :goto_0
.end method

.method private newline()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 582
    iget-object v2, p0, Lcom/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 586
    iget-object v2, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 587
    .local v0, "i":I
    iget v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .local v1, "size":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 590
    return-void

    .line 583
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    return-void

    .line 588
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_1
    iget-object v2, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    iget-object v3, p0, Lcom/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 587
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private open(ILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;
    .locals 1
    .param p1, "empty"    # I
    .param p2, "openBracket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->beforeValue(Z)V

    .line 326
    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonWriter;->push(I)V

    .line 327
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 328
    return-object p0
.end method

.method private peek()I
    .locals 2

    .prologue
    .line 366
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0

    .line 367
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private push(I)V
    .locals 4
    .param p1, "newTop"    # I

    .prologue
    const/4 v3, 0x0

    .line 354
    iget v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    iget-object v2, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 359
    :goto_0
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    iget v2, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    aput p1, v1, v2

    .line 360
    return-void

    .line 355
    :cond_0
    iget v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 356
    .local v0, "newStack":[I
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    iget v2, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    goto :goto_0
.end method

.method private replaceTop(I)V
    .locals 2
    .param p1, "topOfStack"    # I

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 377
    return-void
.end method

.method private string(Ljava/lang/String;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 550
    iget-boolean v6, p0, Lcom/google/gson/stream/JsonWriter;->htmlSafe:Z

    if-nez v6, :cond_0

    sget-object v5, Lcom/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 551
    .local v5, "replacements":[Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const-string/jumbo v7, "\""

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 553
    .local v2, "last":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "length":I
    const/4 v1, 0x0

    .line 554
    .local v1, "i":I
    :goto_1
    if-lt v1, v3, :cond_1

    .line 575
    if-lt v2, v3, :cond_7

    .line 578
    :goto_2
    iget-object v6, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const-string/jumbo v7, "\""

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 579
    return-void

    .line 550
    .end local v1    # "i":I
    .end local v2    # "last":I
    .end local v3    # "length":I
    .end local v5    # "replacements":[Ljava/lang/String;
    :cond_0
    sget-object v5, Lcom/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    goto :goto_0

    .line 555
    .restart local v1    # "i":I
    .restart local v2    # "last":I
    .restart local v3    # "length":I
    .restart local v5    # "replacements":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-char v0, v6

    .local v0, "c":C
    const/16 v6, 0x80

    .line 557
    if-lt v0, v6, :cond_3

    const/16 v6, 0x2028

    .line 562
    if-eq v0, v6, :cond_4

    const/16 v6, 0x2029

    .line 564
    if-eq v0, v6, :cond_5

    .line 554
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 558
    :cond_3
    aget-object v4, v5, v0

    .line 559
    .local v4, "replacement":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 569
    :goto_4
    if-lt v2, v1, :cond_6

    .line 572
    :goto_5
    iget-object v6, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v6, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 573
    add-int/lit8 v2, v1, 0x1

    goto :goto_3

    .end local v4    # "replacement":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "\\u2028"

    .line 563
    .restart local v4    # "replacement":Ljava/lang/String;
    goto :goto_4

    .end local v4    # "replacement":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "\\u2029"

    .line 565
    .restart local v4    # "replacement":Ljava/lang/String;
    goto :goto_4

    .line 570
    :cond_6
    iget-object v6, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    sub-int v7, v1, v2

    invoke-virtual {v6, p1, v2, v7}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    goto :goto_5

    .line 576
    .end local v0    # "c":C
    .end local v4    # "replacement":Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    sub-int v7, v3, v2

    invoke-virtual {v6, p1, v2, v7}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    goto :goto_2
.end method

.method private writeDeferredName()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 400
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 405
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->beforeName()V

    .line 402
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->string(Ljava/lang/String;)V

    .line 403
    iput-object v1, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public beginArray()Lcom/google/gson/stream/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    const/4 v0, 0x1

    const-string/jumbo v1, "["

    .line 288
    invoke-direct {p0, v0, v1}, Lcom/google/gson/stream/JsonWriter;->open(ILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public beginObject()Lcom/google/gson/stream/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    const/4 v0, 0x3

    const-string/jumbo v1, "{"

    .line 308
    invoke-direct {p0, v0, v1}, Lcom/google/gson/stream/JsonWriter;->open(ILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 540
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 542
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 543
    .local v0, "size":I
    if-le v0, v2, :cond_1

    .line 544
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Incomplete document"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 543
    :cond_1
    if-eq v0, v2, :cond_2

    :goto_0
    const/4 v1, 0x0

    .line 546
    iput v1, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    .line 547
    return-void

    .line 543
    :cond_2
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->stack:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method

.method public endArray()Lcom/google/gson/stream/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string/jumbo v2, "]"

    .line 297
    invoke-direct {p0, v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->close(IILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Lcom/google/gson/stream/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x5

    const-string/jumbo v2, "}"

    .line 317
    invoke-direct {p0, v0, v1, v2}, Lcom/google/gson/stream/JsonWriter;->close(IILjava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 528
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 532
    return-void

    .line 529
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getSerializeNulls()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    return v0
.end method

.method public final isHtmlSafe()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->htmlSafe:Z

    return v0
.end method

.method public isLenient()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    return v0
.end method

.method public name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    if-eqz p1, :cond_0

    .line 389
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 392
    iget v0, p0, Lcom/google/gson/stream/JsonWriter;->stackSize:I

    if-eqz v0, :cond_2

    .line 395
    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 396
    return-object p0

    .line 387
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 393
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nullValue()Lcom/google/gson/stream/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 446
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 454
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/gson/stream/JsonWriter;->beforeValue(Z)V

    .line 455
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 456
    return-object p0

    .line 447
    :cond_0
    iget-boolean v0, p0, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    if-nez v0, :cond_1

    .line 450
    iput-object v2, p0, Lcom/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 451
    return-object p0

    .line 448
    :cond_1
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    goto :goto_0
.end method

.method public final setHtmlSafe(Z)V
    .locals 0
    .param p1, "htmlSafe"    # Z

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonWriter;->htmlSafe:Z

    .line 254
    return-void
.end method

.method public final setIndent(Ljava/lang/String;)V
    .locals 1
    .param p1, "indent"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iput-object p1, p0, Lcom/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    const-string/jumbo v0, ": "

    .line 218
    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    .line 220
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    const-string/jumbo v0, ":"

    .line 215
    iput-object v0, p0, Lcom/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    goto :goto_0
.end method

.method public final setLenient(Z)V
    .locals 0
    .param p1, "lenient"    # Z

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    .line 236
    return-void
.end method

.method public final setSerializeNulls(Z)V
    .locals 0
    .param p1, "serializeNulls"    # Z

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/google/gson/stream/JsonWriter;->serializeNulls:Z

    .line 270
    return-void
.end method

.method public value(J)Lcom/google/gson/stream/JsonWriter;
    .locals 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 495
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->beforeValue(Z)V

    .line 496
    iget-object v0, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 497
    return-object p0
.end method

.method public value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;
    .locals 4
    .param p1, "value"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 508
    if-eqz p1, :cond_0

    .line 512
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 513
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "string":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/google/gson/stream/JsonWriter;->lenient:Z

    if-eqz v1, :cond_1

    .line 518
    :goto_0
    invoke-direct {p0, v2}, Lcom/google/gson/stream/JsonWriter;->beforeValue(Z)V

    .line 519
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 520
    return-object p0

    .line 509
    .end local v0    # "string":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    move-result-object v1

    return-object v1

    .restart local v0    # "string":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "-Infinity"

    .line 514
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 516
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Numeric values must be finite, but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string/jumbo v1, "Infinity"

    .line 514
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    if-eqz p1, :cond_0

    .line 417
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 418
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->beforeValue(Z)V

    .line 419
    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonWriter;->string(Ljava/lang/String;)V

    .line 420
    return-object p0

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public value(Z)Lcom/google/gson/stream/JsonWriter;
    .locals 2
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 465
    invoke-direct {p0}, Lcom/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 466
    invoke-direct {p0, v0}, Lcom/google/gson/stream/JsonWriter;->beforeValue(Z)V

    .line 467
    iget-object v1, p0, Lcom/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    if-nez p1, :cond_0

    const-string/jumbo v0, "false"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 468
    return-object p0

    :cond_0
    const-string/jumbo v0, "true"

    goto :goto_0
.end method
