.class public Lcom/google/android/gms/internal/zzsp;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/zzso",
        "<TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final tag:I

.field protected final type:I

.field protected final zzbuk:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final zzbul:Z


# direct methods
.method private constructor <init>(ILjava/lang/Class;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<TT;>;IZ)V"
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzsp;->type:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzsp;->zzbuk:Ljava/lang/Class;

    iput p3, p0, Lcom/google/android/gms/internal/zzsp;->tag:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzsp;->zzbul:Z

    return-void
.end method

.method private zzK(Ljava/util/List;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzsw;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsp;->zzbuk:Ljava/lang/Class;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsp;->zzbuk:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    if-lt v2, v0, :cond_3

    return-object v1

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzsw;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzsw;->zzbuv:[B

    array-length v4, v4

    if-nez v4, :cond_1

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/internal/zzsp;->zza(Lcom/google/android/gms/internal/zzsw;Ljava/util/List;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    return-object v0

    :cond_3
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v2, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private zzL(Ljava/util/List;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzsw;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzsw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsp;->zzbuk:Ljava/lang/Class;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzsw;->zzbuv:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsm;->zzD([B)Lcom/google/android/gms/internal/zzsm;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsp;->zzP(Lcom/google/android/gms/internal/zzsm;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static zza(ILjava/lang/Class;J)Lcom/google/android/gms/internal/zzsp;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/google/android/gms/internal/zzso",
            "<TM;>;T:",
            "Lcom/google/android/gms/internal/zzsu;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;J)",
            "Lcom/google/android/gms/internal/zzsp",
            "<TM;TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzsp;

    long-to-int v1, p2

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/internal/zzsp;-><init>(ILjava/lang/Class;IZ)V

    return-object v0
.end method


# virtual methods
.method final zzJ(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzsw;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsp;->zzbul:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzsp;->zzL(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzsp;->zzK(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected zzP(Lcom/google/android/gms/internal/zzsm;)Ljava/lang/Object;
    .locals 5

    .prologue
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsp;->zzbul:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsp;->zzbuk:Ljava/lang/Class;

    move-object v1, v0

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzsp;->type:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/zzsp;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error creating instance of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsp;->zzbuk:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :pswitch_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzsu;

    iget v2, p0, Lcom/google/android/gms/internal/zzsp;->tag:I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzsx;->zzmJ(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzsm;->zza(Lcom/google/android/gms/internal/zzsu;I)V

    return-object v0

    :pswitch_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzsu;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsm;->zza(Lcom/google/android/gms/internal/zzsu;)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error creating instance of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Error reading extension field"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method zzY(Ljava/lang/Object;)I
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsp;->zzbul:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsp;->zzaa(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsp;->zzZ(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected zzZ(Ljava/lang/Object;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzsp;->zzaa(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1
.end method

.method protected zza(Lcom/google/android/gms/internal/zzsw;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzsw;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    iget-object v0, p1, Lcom/google/android/gms/internal/zzsw;->zzbuv:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsm;->zzD([B)Lcom/google/android/gms/internal/zzsm;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzsp;->zzP(Lcom/google/android/gms/internal/zzsm;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzsn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsp;->zzbul:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzsp;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzsn;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzsp;->zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/zzsn;)V

    goto :goto_0
.end method

.method protected zzaa(Ljava/lang/Object;)I
    .locals 3

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/zzsp;->tag:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsx;->zzmJ(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzsp;->type:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/zzsp;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/zzsu;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzsn;->zzb(ILcom/google/android/gms/internal/zzsu;)I

    move-result v0

    return v0

    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/zzsu;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzsn;->zzc(ILcom/google/android/gms/internal/zzsu;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzsn;)V
    .locals 3

    .prologue
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzsp;->tag:I

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzsn;->zzmB(I)V

    iget v0, p0, Lcom/google/android/gms/internal/zzsp;->type:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/zzsp;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_0
    :try_start_1
    check-cast p1, Lcom/google/android/gms/internal/zzsu;

    iget v0, p0, Lcom/google/android/gms/internal/zzsp;->tag:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsx;->zzmJ(I)I

    move-result v0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzsn;->zzb(Lcom/google/android/gms/internal/zzsu;)V

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/zzsn;->zzE(II)V

    :goto_0
    return-void

    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/zzsu;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzsn;->zzc(Lcom/google/android/gms/internal/zzsu;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/zzsn;)V
    .locals 3

    .prologue
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, p2}, Lcom/google/android/gms/internal/zzsp;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzsn;)V

    goto :goto_1
.end method
