.class Lcom/sonyericsson/android/socialphonebook/SimImportActivity$NamePhoneTypePair;
.super Ljava/lang/Object;
.source "SimImportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/SimImportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NamePhoneTypePair"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field phoneType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "nameWithPhoneType"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput v8, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$NamePhoneTypePair;->phoneType:I

    .line 124
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/StringUtil;->trimTrailingNul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, "nameLen":I
    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 132
    :cond_0
    add-int/lit8 v4, v1, -0x2

    if-ltz v4, :cond_c

    add-int/lit8 v4, v1, -0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_c

    .line 133
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 134
    .local v0, "c":C
    const/16 v4, 0x57

    if-eq v0, v4, :cond_1

    const/16 v4, 0x33

    if-ne v0, v4, :cond_4

    .line 135
    :cond_1
    const/4 v4, 0x3

    iput v4, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$NamePhoneTypePair;->phoneType:I

    .line 147
    :cond_2
    :goto_0
    add-int/lit8 v4, v1, -0x2

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$NamePhoneTypePair;->name:Ljava/lang/String;

    .line 155
    .end local v0    # "c":C
    :goto_1
    if-le v1, v7, :cond_3

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$NamePhoneTypePair;->name:Ljava/lang/String;

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 156
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$NamePhoneTypePair;->name:Ljava/lang/String;

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "split":[Ljava/lang/String;
    array-length v4, v2

    if-ne v4, v8, :cond_3

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v2, v7

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$NamePhoneTypePair;->name:Ljava/lang/String;

    .line 122
    .end local v2    # "split":[Ljava/lang/String;
    .end local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_3
    return-void

    .line 136
    .restart local v0    # "c":C
    :cond_4
    const/16 v4, 0x4d

    if-eq v0, v4, :cond_5

    const/16 v4, 0x31

    if-ne v0, v4, :cond_6

    .line 137
    :cond_5
    iput v8, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$NamePhoneTypePair;->phoneType:I

    goto :goto_0

    .line 136
    :cond_6
    const/16 v4, 0x36

    if-eq v0, v4, :cond_5

    .line 138
    const/16 v4, 0x48

    if-eq v0, v4, :cond_7

    const/16 v4, 0x32

    if-ne v0, v4, :cond_8

    .line 139
    :cond_7
    iput v7, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$NamePhoneTypePair;->phoneType:I

    goto :goto_0

    .line 140
    :cond_8
    const/16 v4, 0x4f

    if-eq v0, v4, :cond_9

    const/16 v4, 0x35

    if-ne v0, v4, :cond_a

    .line 141
    :cond_9
    const/4 v4, 0x7

    iput v4, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$NamePhoneTypePair;->phoneType:I

    goto :goto_0

    .line 142
    :cond_a
    const/16 v4, 0x34

    if-ne v0, v4, :cond_b

    .line 143
    const/16 v4, 0xd

    iput v4, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$NamePhoneTypePair;->phoneType:I

    goto :goto_0

    .line 144
    :cond_b
    const/16 v4, 0x37

    if-ne v0, v4, :cond_2

    .line 145
    const/16 v4, 0x11

    iput v4, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$NamePhoneTypePair;->phoneType:I

    goto :goto_0

    .line 149
    .end local v0    # "c":C
    :cond_c
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/SimImportActivity$NamePhoneTypePair;->name:Ljava/lang/String;

    goto :goto_1
.end method
