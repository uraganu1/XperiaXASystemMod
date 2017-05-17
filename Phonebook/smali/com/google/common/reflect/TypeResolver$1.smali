.class final Lcom/google/common/reflect/TypeResolver$1;
.super Lcom/google/common/reflect/TypeVisitor;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/TypeResolver;->populateTypeMappings(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mappings:Ljava/util/Map;

.field final synthetic val$to:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/reflect/Type;)V
    .locals 0
    .param p2, "val$to"    # Ljava/lang/reflect/Type;

    .prologue
    .line 106
    .local p1, "val$mappings":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/common/reflect/TypeResolver$TypeVariableKey;Ljava/lang/reflect/Type;>;"
    iput-object p1, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Lcom/google/common/reflect/TypeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method visitClass(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "fromClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No type mapping from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method visitGenericArrayType(Ljava/lang/reflect/GenericArrayType;)V
    .locals 6
    .param p1, "fromArrayType"    # Ljava/lang/reflect/GenericArrayType;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 140
    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/google/common/reflect/Types;->getComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 141
    .local v0, "componentType":Ljava/lang/reflect/Type;
    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    const-string/jumbo v4, "%s is not an array type."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    aput-object v5, v2, v3

    invoke-static {v1, v4, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 142
    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/common/reflect/TypeResolver;->-wrap2(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 139
    return-void

    :cond_0
    move v1, v3

    .line 141
    goto :goto_0
.end method

.method visitParameterizedType(Ljava/lang/reflect/ParameterizedType;)V
    .locals 11
    .param p1, "fromParameterizedType"    # Ljava/lang/reflect/ParameterizedType;

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 128
    const-class v4, Ljava/lang/reflect/ParameterizedType;

    iget-object v7, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-static {v4, v7}, Lcom/google/common/reflect/TypeResolver;->-wrap0(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 129
    .local v3, "toParameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 130
    const-string/jumbo v7, "Inconsistent raw type: %s vs. %s"

    .line 129
    new-array v8, v10, [Ljava/lang/Object;

    .line 130
    aput-object p1, v8, v6

    iget-object v9, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    aput-object v9, v8, v5

    .line 129
    invoke-static {v4, v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 131
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 132
    .local v0, "fromArgs":[Ljava/lang/reflect/Type;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 133
    .local v2, "toArgs":[Ljava/lang/reflect/Type;
    array-length v4, v0

    array-length v7, v2

    if-ne v4, v7, :cond_0

    move v4, v5

    .line 134
    :goto_0
    const-string/jumbo v7, "%s not compatible with %s"

    .line 133
    new-array v8, v10, [Ljava/lang/Object;

    .line 134
    aput-object p1, v8, v6

    aput-object v3, v8, v5

    .line 133
    invoke-static {v4, v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 135
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 136
    iget-object v4, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    aget-object v5, v0, v1

    aget-object v6, v2, v1

    invoke-static {v4, v5, v6}, Lcom/google/common/reflect/TypeResolver;->-wrap2(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_0
    move v4, v6

    .line 133
    goto :goto_0

    .line 127
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method visitTypeVariable(Ljava/lang/reflect/TypeVariable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    new-instance v1, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;

    invoke-direct {v1, p1}, Lcom/google/common/reflect/TypeResolver$TypeVariableKey;-><init>(Ljava/lang/reflect/TypeVariable;)V

    iget-object v2, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method visitWildcardType(Ljava/lang/reflect/WildcardType;)V
    .locals 11
    .param p1, "fromWildcardType"    # Ljava/lang/reflect/WildcardType;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 111
    const-class v6, Ljava/lang/reflect/WildcardType;

    iget-object v9, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    invoke-static {v6, v9}, Lcom/google/common/reflect/TypeResolver;->-wrap0(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/WildcardType;

    .line 112
    .local v5, "toWildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 113
    .local v1, "fromUpperBounds":[Ljava/lang/reflect/Type;
    invoke-interface {v5}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 114
    .local v4, "toUpperBounds":[Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 115
    .local v0, "fromLowerBounds":[Ljava/lang/reflect/Type;
    invoke-interface {v5}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 117
    .local v3, "toLowerBounds":[Ljava/lang/reflect/Type;
    array-length v6, v1

    array-length v9, v4

    if-ne v6, v9, :cond_1

    .line 118
    array-length v6, v0

    array-length v9, v3

    if-ne v6, v9, :cond_0

    move v6, v7

    .line 119
    :goto_0
    const-string/jumbo v9, "Incompatible type: %s vs. %s"

    .line 116
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 119
    aput-object p1, v10, v8

    iget-object v8, p0, Lcom/google/common/reflect/TypeResolver$1;->val$to:Ljava/lang/reflect/Type;

    aput-object v8, v10, v7

    .line 116
    invoke-static {v6, v9, v10}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 120
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v1

    if-ge v2, v6, :cond_2

    .line 121
    iget-object v6, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    aget-object v7, v1, v2

    aget-object v8, v4, v2

    invoke-static {v6, v7, v8}, Lcom/google/common/reflect/TypeResolver;->-wrap2(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "i":I
    :cond_0
    move v6, v8

    .line 118
    goto :goto_0

    :cond_1
    move v6, v8

    .line 117
    goto :goto_0

    .line 123
    .restart local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    :goto_2
    array-length v6, v0

    if-ge v2, v6, :cond_3

    .line 124
    iget-object v6, p0, Lcom/google/common/reflect/TypeResolver$1;->val$mappings:Ljava/util/Map;

    aget-object v7, v0, v2

    aget-object v8, v3, v2

    invoke-static {v6, v7, v8}, Lcom/google/common/reflect/TypeResolver;->-wrap2(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 110
    :cond_3
    return-void
.end method
