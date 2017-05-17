.class public Lcom/sonyericsson/conversations/util/ReflectionUtil;
.super Ljava/lang/Object;
.source "ReflectionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p0, "classFullName"    # Ljava/lang/String;
    .param p1, "constructorName"    # Ljava/lang/String;
    .param p3, "construcorParams"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 18
    .local p2, "constructorParamTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    .line 20
    .local v8, "instance":Ljava/lang/Object;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 21
    .local v0, "classDefinition":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 22
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "classDefinition == null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4

    .line 49
    .end local v0    # "classDefinition":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "instance":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 50
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 25
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "classDefinition":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "instance":Ljava/lang/Object;
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 27
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-nez v1, :cond_1

    .line 28
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "constructor == null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4

    .line 51
    .end local v0    # "classDefinition":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v8    # "instance":Ljava/lang/Object;
    :catch_1
    move-exception v6

    .line 52
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 30
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v0    # "classDefinition":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v8    # "instance":Ljava/lang/Object;
    :cond_1
    const/4 v9, 0x1

    :try_start_2
    invoke-virtual {v1, v9}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 32
    invoke-virtual {v1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 33
    if-nez v8, :cond_4

    .line 34
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "instance == null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4

    .line 53
    .end local v0    # "classDefinition":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v8    # "instance":Ljava/lang/Object;
    :catch_2
    move-exception v4

    .line 54
    .local v4, "e":Ljava/lang/IllegalAccessException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 37
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    .restart local v0    # "classDefinition":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "instance":Ljava/lang/Object;
    :cond_2
    :try_start_3
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 39
    .local v2, "constructor":Ljava/lang/reflect/Method;
    if-nez v2, :cond_3

    .line 40
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "constructor == null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4

    .line 55
    .end local v0    # "classDefinition":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "constructor":Ljava/lang/reflect/Method;
    .end local v8    # "instance":Ljava/lang/Object;
    :catch_3
    move-exception v7

    .line 56
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 42
    .end local v7    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v0    # "classDefinition":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "constructor":Ljava/lang/reflect/Method;
    .restart local v8    # "instance":Ljava/lang/Object;
    :cond_3
    const/4 v9, 0x1

    :try_start_4
    invoke-virtual {v2, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 44
    const/4 v9, 0x0

    invoke-virtual {v2, v9, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 45
    if-nez v8, :cond_4

    .line 46
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "instance == null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_4

    .line 57
    .end local v0    # "classDefinition":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "constructor":Ljava/lang/reflect/Method;
    .end local v8    # "instance":Ljava/lang/Object;
    :catch_4
    move-exception v5

    .line 58
    .local v5, "e":Ljava/lang/InstantiationException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 60
    .end local v5    # "e":Ljava/lang/InstantiationException;
    .restart local v0    # "classDefinition":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "instance":Ljava/lang/Object;
    :cond_4
    return-object v8
.end method

.method public static final varargs invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "methodInstance"    # Ljava/lang/reflect/Method;
    .param p1, "objectInstance"    # Ljava/lang/Object;
    .param p2, "methodParams"    # [Ljava/lang/Object;

    .prologue
    .line 66
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 67
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
