.class public final synthetic LE1/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# static fields
.field public static final a:LU0/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LE1/b1;

    invoke-direct {v0}, LE1/b1;-><init>()V

    sput-object v0, LE1/b1;->a:LU0/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, LB1/A;

    check-cast p2, LQ1/l;

    new-instance v0, LE1/V;

    invoke-direct {v0, p2}, LE1/V;-><init>(LQ1/l;)V

    invoke-virtual {p1, v0}, LB1/A;->G0(LB1/j;)V

    return-void
.end method
