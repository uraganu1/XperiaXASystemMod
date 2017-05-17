.class Lcom/google/common/reflect/Invokable$ConstructorInvokable;
.super Lcom/google/common/reflect/Invokable;
.source "Invokable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/Invokable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConstructorInvokable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/reflect/Invokable",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "this":Lcom/google/common/reflect/Invokable$ConstructorInvokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>.ConstructorInvokable<TT;>;"
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-direct {p0, p1}, Lcom/google/common/reflect/Invokable;-><init>(Ljava/lang/reflect/AccessibleObject;)V

    .line 236
    iput-object p1, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    .line 234
    return-void
.end method

.method private static copyOfRange([Ljava/lang/reflect/Type;II)[Ljava/lang/reflect/Type;
    .locals 3
    .param p0, "array"    # [Ljava/lang/reflect/Type;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 273
    sub-int v0, p2, p1

    .line 274
    .local v0, "length":I
    new-array v1, v0, [Ljava/lang/reflect/Type;

    .line 275
    .local v1, "newArray":[Ljava/lang/reflect/Type;
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    return-object v1
.end method

.method private mayNeedHiddenThis()Z
    .locals 5

    .prologue
    .local p0, "this":Lcom/google/common/reflect/Invokable$ConstructorInvokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>.ConstructorInvokable<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 318
    iget-object v4, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 319
    .local v0, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 321
    return v3

    .line 323
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 324
    .local v1, "enclosingMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_2

    .line 326
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    .line 334
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 335
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 334
    :cond_3
    :goto_1
    return v2

    :cond_4
    move v2, v3

    .line 335
    goto :goto_1
.end method


# virtual methods
.method getGenericExceptionTypes()[Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 280
    .local p0, "this":Lcom/google/common/reflect/Invokable$ConstructorInvokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>.ConstructorInvokable<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .locals 5

    .prologue
    .local p0, "this":Lcom/google/common/reflect/Invokable$ConstructorInvokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>.ConstructorInvokable<TT;>;"
    const/4 v4, 0x0

    .line 260
    iget-object v2, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 261
    .local v1, "types":[Ljava/lang/reflect/Type;
    array-length v2, v1

    if-lez v2, :cond_0

    invoke-direct {p0}, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->mayNeedHiddenThis()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    iget-object v2, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 263
    .local v0, "rawParamTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v2, v1

    array-length v3, v0

    if-ne v2, v3, :cond_0

    .line 264
    aget-object v2, v0, v4

    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 266
    array-length v2, v1

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->copyOfRange([Ljava/lang/reflect/Type;II)[Ljava/lang/reflect/Type;

    move-result-object v2

    return-object v2

    .line 269
    .end local v0    # "rawParamTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    return-object v1
.end method

.method getGenericReturnType()Ljava/lang/reflect/Type;
    .locals 3

    .prologue
    .line 250
    .local p0, "this":Lcom/google/common/reflect/Invokable$ConstructorInvokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>.ConstructorInvokable<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 251
    .local v0, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 252
    .local v1, "typeParams":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    array-length v2, v1

    if-lez v2, :cond_0

    .line 253
    invoke-static {v0, v1}, Lcom/google/common/reflect/Types;->newParameterizedType(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v2

    return-object v2

    .line 255
    :cond_0
    return-object v0
.end method

.method final getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 284
    .local p0, "this":Lcom/google/common/reflect/Invokable$ConstructorInvokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>.ConstructorInvokable<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/reflect/Invokable$ConstructorInvokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>.ConstructorInvokable<TT;>;"
    const/4 v5, 0x0

    .line 297
    invoke-virtual {p0}, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    .line 298
    .local v0, "declaredByClass":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    iget-object v3, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 300
    .local v1, "declaredByConstructor":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    array-length v3, v0

    array-length v4, v1

    add-int/2addr v3, v4

    new-array v2, v3, [Ljava/lang/reflect/TypeVariable;

    .line 301
    .local v2, "result":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    array-length v3, v0

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    array-length v3, v0

    .line 305
    array-length v4, v1

    .line 302
    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    return-object v2
.end method

.method final invokeInternal(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "receiver"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "this":Lcom/google/common/reflect/Invokable$ConstructorInvokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>.ConstructorInvokable<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final isOverridable()Z
    .locals 1

    .prologue
    .line 310
    .local p0, "this":Lcom/google/common/reflect/Invokable$ConstructorInvokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>.ConstructorInvokable<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final isVarArgs()Z
    .locals 1

    .prologue
    .line 314
    .local p0, "this":Lcom/google/common/reflect/Invokable$ConstructorInvokable;, "Lcom/google/common/reflect/Invokable<TT;TR;>.ConstructorInvokable<TT;>;"
    iget-object v0, p0, Lcom/google/common/reflect/Invokable$ConstructorInvokable;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    move-result v0

    return v0
.end method
