.class Lcom/google/common/hash/AbstractCompositeHashFunction$1;
.super Ljava/lang/Object;
.source "AbstractCompositeHashFunction.java"

# interfaces
.implements Lcom/google/common/hash/Hasher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/hash/AbstractCompositeHashFunction;->newHasher()Lcom/google/common/hash/Hasher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/hash/AbstractCompositeHashFunction;

.field final synthetic val$hashers:[Lcom/google/common/hash/Hasher;


# direct methods
.method constructor <init>(Lcom/google/common/hash/AbstractCompositeHashFunction;[Lcom/google/common/hash/Hasher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/hash/AbstractCompositeHashFunction;
    .param p2, "val$hashers"    # [Lcom/google/common/hash/Hasher;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->this$0:Lcom/google/common/hash/AbstractCompositeHashFunction;

    iput-object p2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hash()Lcom/google/common/hash/HashCode;
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->this$0:Lcom/google/common/hash/AbstractCompositeHashFunction;

    iget-object v1, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    invoke-virtual {v0, v1}, Lcom/google/common/hash/AbstractCompositeHashFunction;->makeHash([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Z)Lcom/google/common/hash/Hasher;
    .locals 4
    .param p1, "b"    # Z

    .prologue
    .line 112
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 113
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v0, p1}, Lcom/google/common/hash/Hasher;->putBoolean(Z)Lcom/google/common/hash/Hasher;

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putBoolean(Z)Lcom/google/common/hash/PrimitiveSink;
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putBoolean(Z)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putByte(B)Lcom/google/common/hash/Hasher;
    .locals 4
    .param p1, "b"    # B

    .prologue
    .line 56
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 57
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v0, p1}, Lcom/google/common/hash/Hasher;->putByte(B)Lcom/google/common/hash/Hasher;

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putByte(B)Lcom/google/common/hash/PrimitiveSink;
    .locals 1
    .param p1, "b"    # B

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putByte(B)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putBytes([B)Lcom/google/common/hash/Hasher;
    .locals 4
    .param p1, "bytes"    # [B

    .prologue
    .line 63
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 64
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v0, p1}, Lcom/google/common/hash/Hasher;->putBytes([B)Lcom/google/common/hash/Hasher;

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_0
    return-object p0
.end method

.method public putBytes([BII)Lcom/google/common/hash/Hasher;
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 70
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 71
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/hash/Hasher;->putBytes([BII)Lcom/google/common/hash/Hasher;

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putBytes([B)Lcom/google/common/hash/PrimitiveSink;
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putBytes([B)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putBytes([BII)Lcom/google/common/hash/PrimitiveSink;
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putBytes([BII)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putChar(C)Lcom/google/common/hash/Hasher;
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 119
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 120
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v0, p1}, Lcom/google/common/hash/Hasher;->putChar(C)Lcom/google/common/hash/Hasher;

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putChar(C)Lcom/google/common/hash/PrimitiveSink;
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putChar(C)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putDouble(D)Lcom/google/common/hash/Hasher;
    .locals 5
    .param p1, "d"    # D

    .prologue
    .line 105
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 106
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/Hasher;->putDouble(D)Lcom/google/common/hash/Hasher;

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v0    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putDouble(D)Lcom/google/common/hash/PrimitiveSink;
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putDouble(D)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putFloat(F)Lcom/google/common/hash/Hasher;
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 98
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 99
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v0, p1}, Lcom/google/common/hash/Hasher;->putFloat(F)Lcom/google/common/hash/Hasher;

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putFloat(F)Lcom/google/common/hash/PrimitiveSink;
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putFloat(F)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putInt(I)Lcom/google/common/hash/Hasher;
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 84
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 85
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v0, p1}, Lcom/google/common/hash/Hasher;->putInt(I)Lcom/google/common/hash/Hasher;

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putInt(I)Lcom/google/common/hash/PrimitiveSink;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putInt(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putLong(J)Lcom/google/common/hash/Hasher;
    .locals 5
    .param p1, "l"    # J

    .prologue
    .line 91
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 92
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/Hasher;->putLong(J)Lcom/google/common/hash/Hasher;

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putLong(J)Lcom/google/common/hash/PrimitiveSink;
    .locals 1
    .param p1, "l"    # J

    .prologue
    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putLong(J)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/Hasher;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel",
            "<-TT;>;)",
            "Lcom/google/common/hash/Hasher;"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    .local p2, "funnel":Lcom/google/common/hash/Funnel;, "Lcom/google/common/hash/Funnel<-TT;>;"
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 149
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/Hasher;->putObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/Hasher;

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_0
    return-object p0
.end method

.method public putShort(S)Lcom/google/common/hash/Hasher;
    .locals 4
    .param p1, "s"    # S

    .prologue
    .line 77
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 78
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v0, p1}, Lcom/google/common/hash/Hasher;->putShort(S)Lcom/google/common/hash/Hasher;

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putShort(S)Lcom/google/common/hash/PrimitiveSink;
    .locals 1
    .param p1, "s"    # S

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putShort(S)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putString(Ljava/lang/CharSequence;)Lcom/google/common/hash/Hasher;
    .locals 1
    .param p1, "chars"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;
    .locals 4
    .param p1, "chars"    # Ljava/lang/CharSequence;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 141
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 142
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/Hasher;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putString(Ljava/lang/CharSequence;)Lcom/google/common/hash/PrimitiveSink;
    .locals 1
    .param p1, "chars"    # Ljava/lang/CharSequence;

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putString(Ljava/lang/CharSequence;)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/PrimitiveSink;
    .locals 1
    .param p1, "chars"    # Ljava/lang/CharSequence;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/Hasher;
    .locals 4
    .param p1, "chars"    # Ljava/lang/CharSequence;

    .prologue
    .line 134
    iget-object v2, p0, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->val$hashers:[Lcom/google/common/hash/Hasher;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 135
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    invoke-interface {v0, p1}, Lcom/google/common/hash/Hasher;->putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/Hasher;

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    .end local v0    # "hasher":Lcom/google/common/hash/Hasher;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/PrimitiveSink;
    .locals 1
    .param p1, "chars"    # Ljava/lang/CharSequence;

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction$1;->putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method
