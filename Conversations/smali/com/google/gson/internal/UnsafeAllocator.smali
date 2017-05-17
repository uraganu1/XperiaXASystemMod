.class public abstract Lcom/google/gson/internal/UnsafeAllocator;
.super Ljava/lang/Object;
.source "UnsafeAllocator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/gson/internal/UnsafeAllocator;
    .locals 13

    .prologue
    :try_start_0
    const-string/jumbo v8, "sun.misc.Unsafe"

    .line 39
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .local v7, "unsafeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v8, "theUnsafe"

    .line 40
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 41
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v8, 0x0

    .line 42
    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .local v6, "unsafe":Ljava/lang/Object;
    const-string/jumbo v8, "allocateInstance"

    const/4 v9, 0x1

    .line 43
    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 44
    .local v0, "allocateInstance":Ljava/lang/reflect/Method;
    new-instance v8, Lcom/google/gson/internal/UnsafeAllocator$1;

    invoke-direct {v8, v0, v6}, Lcom/google/gson/internal/UnsafeAllocator$1;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    .end local v0    # "allocateInstance":Ljava/lang/reflect/Method;
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v6    # "unsafe":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .local v4, "ignored":Ljava/lang/Exception;
    :try_start_1
    const-class v8, Ljava/io/ObjectStreamClass;

    const-string/jumbo v9, "getConstructorId"

    const/4 v10, 0x1

    .line 60
    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 62
    .local v3, "getConstructorId":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 63
    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/Object;

    aput-object v11, v9, v10

    invoke-virtual {v3, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "constructorId":I
    const-class v8, Ljava/io/ObjectStreamClass;

    const-string/jumbo v9, "newInstance"

    const/4 v10, 0x2

    .line 64
    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 66
    .local v5, "newInstance":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 67
    new-instance v8, Lcom/google/gson/internal/UnsafeAllocator$2;

    invoke-direct {v8, v5, v1}, Lcom/google/gson/internal/UnsafeAllocator$2;-><init>(Ljava/lang/reflect/Method;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v8

    .end local v1    # "constructorId":I
    .end local v3    # "getConstructorId":Ljava/lang/reflect/Method;
    .end local v5    # "newInstance":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v4

    :try_start_2
    const-class v8, Ljava/io/ObjectInputStream;

    const-string/jumbo v9, "newInstance"

    const/4 v10, 0x2

    .line 83
    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 85
    .restart local v5    # "newInstance":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 86
    new-instance v8, Lcom/google/gson/internal/UnsafeAllocator$3;

    invoke-direct {v8, v5}, Lcom/google/gson/internal/UnsafeAllocator$3;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v8

    .end local v5    # "newInstance":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v4

    .line 97
    new-instance v8, Lcom/google/gson/internal/UnsafeAllocator$4;

    invoke-direct {v8}, Lcom/google/gson/internal/UnsafeAllocator$4;-><init>()V

    return-object v8
.end method


# virtual methods
.method public abstract newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
