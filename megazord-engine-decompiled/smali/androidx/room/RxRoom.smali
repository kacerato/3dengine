.class public Landroidx/room/RxRoom;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NOTHING:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/room/RxRoom;->NOTHING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)LTe/l;
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "database",
            "inTransaction",
            "tableNames",
            "callable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "Z[",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-static {p0, p1}, Landroidx/room/RxRoom;->getExecutor(Landroidx/room/RoomDatabase;Z)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {p1}, Lsf/b;->b(Ljava/util/concurrent/Executor;)LTe/J;

    move-result-object p1

    .line 4
    invoke-static {p3}, LTe/s;->o0(Ljava/util/concurrent/Callable;)LTe/s;

    move-result-object p3

    .line 5
    invoke-static {p0, p2}, Landroidx/room/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;[Ljava/lang/String;)LTe/l;

    move-result-object p0

    .line 6
    invoke-virtual {p0, p1}, LTe/l;->n6(LTe/J;)LTe/l;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, LTe/l;->U7(LTe/J;)LTe/l;

    move-result-object p0

    .line 8
    invoke-virtual {p0, p1}, LTe/l;->n4(LTe/J;)LTe/l;

    move-result-object p0

    new-instance p1, Landroidx/room/RxRoom$2;

    invoke-direct {p1, p3}, Landroidx/room/RxRoom$2;-><init>(LTe/s;)V

    .line 9
    invoke-virtual {p0, p1}, LTe/l;->L2(LXe/o;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createFlowable(Landroidx/room/RoomDatabase;[Ljava/lang/String;)LTe/l;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "database",
            "tableNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase;",
            "[",
            "Ljava/lang/String;",
            ")",
            "LTe/l<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/room/RxRoom$1;

    invoke-direct {v0, p1, p0}, Landroidx/room/RxRoom$1;-><init>([Ljava/lang/String;Landroidx/room/RoomDatabase;)V

    sget-object p0, LTe/b;->LATEST:LTe/b;

    invoke-static {v0, p0}, LTe/l;->y1(LTe/o;LTe/b;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static createFlowable(Landroidx/room/RoomDatabase;[Ljava/lang/String;Ljava/util/concurrent/Callable;)LTe/l;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "database",
            "tableNames",
            "callable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1, p2}, Landroidx/room/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)LTe/l;

    move-result-object p0

    return-object p0
.end method

.method public static createObservable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)LTe/B;
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "database",
            "inTransaction",
            "tableNames",
            "callable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "Z[",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-static {p0, p1}, Landroidx/room/RxRoom;->getExecutor(Landroidx/room/RoomDatabase;Z)Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {p1}, Lsf/b;->b(Ljava/util/concurrent/Executor;)LTe/J;

    move-result-object p1

    .line 4
    invoke-static {p3}, LTe/s;->o0(Ljava/util/concurrent/Callable;)LTe/s;

    move-result-object p3

    .line 5
    invoke-static {p0, p2}, Landroidx/room/RxRoom;->createObservable(Landroidx/room/RoomDatabase;[Ljava/lang/String;)LTe/B;

    move-result-object p0

    .line 6
    invoke-virtual {p0, p1}, LTe/B;->K5(LTe/J;)LTe/B;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, LTe/B;->o7(LTe/J;)LTe/B;

    move-result-object p0

    .line 8
    invoke-virtual {p0, p1}, LTe/B;->c4(LTe/J;)LTe/B;

    move-result-object p0

    new-instance p1, Landroidx/room/RxRoom$4;

    invoke-direct {p1, p3}, Landroidx/room/RxRoom$4;-><init>(LTe/s;)V

    .line 9
    invoke-virtual {p0, p1}, LTe/B;->C2(LXe/o;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createObservable(Landroidx/room/RoomDatabase;[Ljava/lang/String;)LTe/B;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "database",
            "tableNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase;",
            "[",
            "Ljava/lang/String;",
            ")",
            "LTe/B<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/room/RxRoom$3;

    invoke-direct {v0, p1, p0}, Landroidx/room/RxRoom$3;-><init>([Ljava/lang/String;Landroidx/room/RoomDatabase;)V

    invoke-static {v0}, LTe/B;->s1(LTe/E;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static createObservable(Landroidx/room/RoomDatabase;[Ljava/lang/String;Ljava/util/concurrent/Callable;)LTe/B;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "database",
            "tableNames",
            "callable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1, p2}, Landroidx/room/RxRoom;->createObservable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)LTe/B;

    move-result-object p0

    return-object p0
.end method

.method public static createSingle(Ljava/util/concurrent/Callable;)LTe/K;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "LTe/K<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Landroidx/room/RxRoom$5;

    invoke-direct {v0, p0}, Landroidx/room/RxRoom$5;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LTe/K;->C(LTe/O;)LTe/K;

    move-result-object p0

    return-object p0
.end method

.method private static getExecutor(Landroidx/room/RoomDatabase;Z)Ljava/util/concurrent/Executor;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "database",
            "inTransaction"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getTransactionExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method
