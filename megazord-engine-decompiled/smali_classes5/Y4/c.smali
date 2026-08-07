.class public final synthetic LY4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:LY4/d;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(LY4/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY4/c;->b:LY4/d;

    iput-object p2, p0, LY4/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, LY4/c;->b:LY4/d;

    iget-object v1, p0, LY4/c;->c:Ljava/lang/String;

    check-cast p1, Lw8/c;

    check-cast p2, Lw8/c;

    invoke-static {v0, v1, p1, p2}, LY4/d;->o1(LY4/d;Ljava/lang/String;Lw8/c;Lw8/c;)I

    move-result p1

    return p1
.end method
