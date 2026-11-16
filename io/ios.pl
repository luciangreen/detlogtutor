% 200 recorded inputs and outputs (swipl -g record -t halt io/run.pl writes this; check compares).
io(1, expected, [splits, [3, 5, 2, 0]], [[]+[3, 5, 2, 0], [3]+[5, 2, 0], [3, 5]+[2, 0], [3, 5, 2]+[0], [3, 5, 2, 0]+[]]).
io(2, grade_model, [splits], pass).
io(3, grade_mistake, [splits, forgets_empty], wrong([], [[]+[]], [])).
io(4, task, [big_members], "List the members greater than 2, in order, as one list.").
io(5, expected, [pairs, [2, 5, 5, 1]], [2-2, 2-5, 2-5, 2-1, 5-2, 5-5, 5-5, 5-1, 5-2, 5-5, 5-5, 5-1, 1-2, 1-5, 1-5, 1-1]).
io(6, grade_model, [selects], pass).
io(7, grade_mistake, [big_members, first_only], wrong([3, 3], [3, 3], [3])).
io(8, task, [pairs], "List every pair X-Y of members, in order, as one list.").
io(9, expected, [splits, [2]], [[]+[2], [2]+[]]).
io(10, grade_model, [big_members], pass).
io(11, grade_mistake, [selects, sorted], wrong([3, 1], [3/[1], 1/[3]], [1/[3], 3/[1]])).
io(12, task, [selects], "List every element with the rest, as X/Rest pairs, as one list.").
io(13, expected, [pairs, [0, 1, 4]], [0-0, 0-1, 0-4, 1-0, 1-1, 1-4, 4-0, 4-1, 4-4]).
io(14, grade_model, [splits], pass).
io(15, grade_mistake, [big_members, first_only], wrong([3, 3], [3, 3], [3])).
io(16, task, [splits], "List every way to split the list in two, as A+B pairs, as one list.").
io(17, expected, [big_members, [1]], []).
io(18, grade_model, [big_members], pass).
io(19, grade_mistake, [big_members, not_a_list], wrong([], [], fails)).
io(20, task, [big_members], "List the members greater than 2, in order, as one list.").
io(21, expected, [big_members, []], []).
io(22, grade_model, [pairs], pass).
io(23, grade_mistake, [splits, forgets_empty], wrong([], [[]+[]], [])).
io(24, task, [splits], "List every way to split the list in two, as A+B pairs, as one list.").
io(25, expected, [pairs, []], []).
io(26, grade_model, [big_members], pass).
io(27, grade_mistake, [pairs, no_repeats], wrong([1], [1-1], [])).
io(28, task, [splits], "List every way to split the list in two, as A+B pairs, as one list.").
io(29, expected, [splits, [0, 3, 2, 1]], [[]+[0, 3, 2, 1], [0]+[3, 2, 1], [0, 3]+[2, 1], [0, 3, 2]+[1], [0, 3, 2, 1]+[]]).
io(30, grade_model, [pairs], pass).
io(31, grade_mistake, [splits, forgets_empty], wrong([], [[]+[]], [])).
io(32, task, [splits], "List every way to split the list in two, as A+B pairs, as one list.").
io(33, expected, [splits, [1, 1]], [[]+[1, 1], [1]+[1], [1, 1]+[]]).
io(34, grade_model, [splits], pass).
io(35, grade_mistake, [splits, forgets_empty], wrong([], [[]+[]], [])).
io(36, task, [pairs], "List every pair X-Y of members, in order, as one list.").
io(37, expected, [pairs, [3, 3]], [3-3, 3-3, 3-3, 3-3]).
io(38, grade_model, [pairs], pass).
io(39, grade_mistake, [big_members, not_a_list], wrong([], [], fails)).
io(40, task, [splits], "List every way to split the list in two, as A+B pairs, as one list.").
io(41, expected, [selects, [4]], [4/[]]).
io(42, grade_model, [splits], pass).
io(43, grade_mistake, [pairs, no_repeats], wrong([1], [1-1], [])).
io(44, task, [pairs], "List every pair X-Y of members, in order, as one list.").
io(45, expected, [big_members, [4, 3]], [4, 3]).
io(46, grade_model, [pairs], pass).
io(47, grade_mistake, [selects, sorted], wrong([3, 1], [3/[1], 1/[3]], [1/[3], 3/[1]])).
io(48, task, [selects], "List every element with the rest, as X/Rest pairs, as one list.").
io(49, expected, [selects, [6]], [6/[]]).
io(50, grade_model, [pairs], pass).
io(51, grade_mistake, [selects, sorted], wrong([3, 1], [3/[1], 1/[3]], [1/[3], 3/[1]])).
io(52, task, [big_members], "List the members greater than 2, in order, as one list.").
io(53, expected, [selects, [5]], [5/[]]).
io(54, grade_model, [splits], pass).
io(55, grade_mistake, [selects, sorted], wrong([3, 1], [3/[1], 1/[3]], [1/[3], 3/[1]])).
io(56, task, [big_members], "List the members greater than 2, in order, as one list.").
io(57, expected, [splits, [6, 5, 1, 6]], [[]+[6, 5, 1, 6], [6]+[5, 1, 6], [6, 5]+[1, 6], [6, 5, 1]+[6], [6, 5, 1, 6]+[]]).
io(58, grade_model, [pairs], pass).
io(59, grade_mistake, [pairs, no_repeats], wrong([1], [1-1], [])).
io(60, task, [big_members], "List the members greater than 2, in order, as one list.").
io(61, expected, [selects, []], []).
io(62, grade_model, [selects], pass).
io(63, grade_mistake, [big_members, first_only], wrong([3, 3], [3, 3], [3])).
io(64, task, [big_members], "List the members greater than 2, in order, as one list.").
io(65, expected, [big_members, [2, 5, 1]], [5]).
io(66, grade_model, [big_members], pass).
io(67, grade_mistake, [big_members, first_only], wrong([3, 3], [3, 3], [3])).
io(68, task, [big_members], "List the members greater than 2, in order, as one list.").
io(69, expected, [splits, [3]], [[]+[3], [3]+[]]).
io(70, grade_model, [splits], pass).
io(71, grade_mistake, [big_members, not_a_list], wrong([], [], fails)).
io(72, task, [big_members], "List the members greater than 2, in order, as one list.").
io(73, expected, [big_members, [2, 2, 1]], []).
io(74, grade_model, [big_members], pass).
io(75, grade_mistake, [pairs, no_repeats], wrong([1], [1-1], [])).
io(76, task, [splits], "List every way to split the list in two, as A+B pairs, as one list.").
io(77, expected, [big_members, [5, 6, 1, 3]], [5, 6, 3]).
io(78, grade_model, [selects], pass).
io(79, grade_mistake, [pairs, no_repeats], wrong([1], [1-1], [])).
io(80, task, [big_members], "List the members greater than 2, in order, as one list.").
io(81, expected, [big_members, [5, 1, 6, 2]], [5, 6]).
io(82, grade_model, [pairs], pass).
io(83, grade_mistake, [selects, sorted], wrong([3, 1], [3/[1], 1/[3]], [1/[3], 3/[1]])).
io(84, task, [selects], "List every element with the rest, as X/Rest pairs, as one list.").
io(85, expected, [big_members, []], []).
io(86, grade_model, [splits], pass).
io(87, grade_mistake, [selects, sorted], wrong([3, 1], [3/[1], 1/[3]], [1/[3], 3/[1]])).
io(88, task, [selects], "List every element with the rest, as X/Rest pairs, as one list.").
io(89, expected, [big_members, [3, 0]], [3]).
io(90, grade_model, [splits], pass).
io(91, grade_mistake, [big_members, not_a_list], wrong([], [], fails)).
io(92, task, [splits], "List every way to split the list in two, as A+B pairs, as one list.").
io(93, expected, [splits, [1, 1, 3]], [[]+[1, 1, 3], [1]+[1, 3], [1, 1]+[3], [1, 1, 3]+[]]).
io(94, grade_model, [big_members], pass).
io(95, grade_mistake, [big_members, not_a_list], wrong([], [], fails)).
io(96, task, [selects], "List every element with the rest, as X/Rest pairs, as one list.").
io(97, expected, [big_members, []], []).
io(98, grade_model, [selects], pass).
io(99, grade_mistake, [selects, sorted], wrong([3, 1], [3/[1], 1/[3]], [1/[3], 3/[1]])).
io(100, task, [big_members], "List the members greater than 2, in order, as one list.").
io(101, expected, [pairs, [0, 4, 6]], [0-0, 0-4, 0-6, 4-0, 4-4, 4-6, 6-0, 6-4, 6-6]).
io(102, grade_model, [pairs], pass).
io(103, grade_mistake, [pairs, no_repeats], wrong([1], [1-1], [])).
io(104, task, [selects], "List every element with the rest, as X/Rest pairs, as one list.").
io(105, expected, [splits, []], [[]+[]]).
io(106, grade_model, [splits], pass).
io(107, grade_mistake, [splits, forgets_empty], wrong([], [[]+[]], [])).
io(108, task, [pairs], "List every pair X-Y of members, in order, as one list.").
io(109, expected, [selects, [3, 3]], [3/[3], 3/[3]]).
io(110, grade_model, [splits], pass).
io(111, grade_mistake, [big_members, not_a_list], wrong([], [], fails)).
io(112, task, [splits], "List every way to split the list in two, as A+B pairs, as one list.").
io(113, expected, [big_members, [5, 0]], [5]).
io(114, grade_model, [selects], pass).
io(115, grade_mistake, [big_members, first_only], wrong([3, 3], [3, 3], [3])).
io(116, task, [pairs], "List every pair X-Y of members, in order, as one list.").
io(117, expected, [big_members, [3, 5]], [3, 5]).
io(118, grade_model, [selects], pass).
io(119, grade_mistake, [splits, forgets_empty], wrong([], [[]+[]], [])).
io(120, task, [pairs], "List every pair X-Y of members, in order, as one list.").
io(121, expected, [pairs, []], []).
io(122, grade_model, [splits], pass).
io(123, grade_mistake, [selects, sorted], wrong([3, 1], [3/[1], 1/[3]], [1/[3], 3/[1]])).
io(124, task, [selects], "List every element with the rest, as X/Rest pairs, as one list.").
io(125, expected, [pairs, [5, 1]], [5-5, 5-1, 1-5, 1-1]).
io(126, grade_model, [big_members], pass).
io(127, grade_mistake, [pairs, no_repeats], wrong([1], [1-1], [])).
io(128, task, [splits], "List every way to split the list in two, as A+B pairs, as one list.").
io(129, expected, [splits, [3, 4, 0]], [[]+[3, 4, 0], [3]+[4, 0], [3, 4]+[0], [3, 4, 0]+[]]).
io(130, grade_model, [selects], pass).
io(131, grade_mistake, [big_members, not_a_list], wrong([], [], fails)).
io(132, task, [splits], "List every way to split the list in two, as A+B pairs, as one list.").
io(133, expected, [selects, [6]], [6/[]]).
io(134, grade_model, [splits], pass).
io(135, grade_mistake, [selects, sorted], wrong([3, 1], [3/[1], 1/[3]], [1/[3], 3/[1]])).
io(136, task, [big_members], "List the members greater than 2, in order, as one list.").
io(137, expected, [selects, []], []).
io(138, grade_model, [big_members], pass).
io(139, grade_mistake, [big_members, first_only], wrong([3, 3], [3, 3], [3])).
io(140, task, [selects], "List every element with the rest, as X/Rest pairs, as one list.").
io(141, expected, [splits, [6, 3, 0, 6]], [[]+[6, 3, 0, 6], [6]+[3, 0, 6], [6, 3]+[0, 6], [6, 3, 0]+[6], [6, 3, 0, 6]+[]]).
io(142, grade_model, [selects], pass).
io(143, grade_mistake, [selects, sorted], wrong([3, 1], [3/[1], 1/[3]], [1/[3], 3/[1]])).
io(144, task, [splits], "List every way to split the list in two, as A+B pairs, as one list.").
io(145, expected, [pairs, [6, 6, 2, 0]], [6-6, 6-6, 6-2, 6-0, 6-6, 6-6, 6-2, 6-0, 2-6, 2-6, 2-2, 2-0, 0-6, 0-6, 0-2, 0-0]).
io(146, grade_model, [selects], pass).
io(147, grade_mistake, [selects, sorted], wrong([3, 1], [3/[1], 1/[3]], [1/[3], 3/[1]])).
io(148, task, [selects], "List every element with the rest, as X/Rest pairs, as one list.").
io(149, expected, [selects, [6]], [6/[]]).
io(150, grade_model, [selects], pass).
io(151, grade_mistake, [pairs, no_repeats], wrong([1], [1-1], [])).
io(152, task, [pairs], "List every pair X-Y of members, in order, as one list.").
io(153, expected, [selects, [3]], [3/[]]).
io(154, grade_model, [selects], pass).
io(155, grade_mistake, [big_members, first_only], wrong([3, 3], [3, 3], [3])).
io(156, task, [selects], "List every element with the rest, as X/Rest pairs, as one list.").
io(157, expected, [big_members, [1]], []).
io(158, grade_model, [big_members], pass).
io(159, grade_mistake, [big_members, first_only], wrong([3, 3], [3, 3], [3])).
io(160, task, [big_members], "List the members greater than 2, in order, as one list.").
io(161, expected, [selects, [3]], [3/[]]).
io(162, grade_model, [splits], pass).
io(163, grade_mistake, [big_members, first_only], wrong([3, 3], [3, 3], [3])).
io(164, task, [selects], "List every element with the rest, as X/Rest pairs, as one list.").
io(165, expected, [pairs, [2, 6]], [2-2, 2-6, 6-2, 6-6]).
io(166, grade_model, [selects], pass).
io(167, grade_mistake, [splits, forgets_empty], wrong([], [[]+[]], [])).
io(168, task, [selects], "List every element with the rest, as X/Rest pairs, as one list.").
io(169, expected, [pairs, []], []).
io(170, grade_model, [selects], pass).
io(171, grade_mistake, [pairs, no_repeats], wrong([1], [1-1], [])).
io(172, task, [selects], "List every element with the rest, as X/Rest pairs, as one list.").
io(173, expected, [selects, [4]], [4/[]]).
io(174, grade_model, [splits], pass).
io(175, grade_mistake, [selects, sorted], wrong([3, 1], [3/[1], 1/[3]], [1/[3], 3/[1]])).
io(176, task, [big_members], "List the members greater than 2, in order, as one list.").
io(177, expected, [big_members, [3]], [3]).
io(178, grade_model, [pairs], pass).
io(179, grade_mistake, [selects, sorted], wrong([3, 1], [3/[1], 1/[3]], [1/[3], 3/[1]])).
io(180, task, [splits], "List every way to split the list in two, as A+B pairs, as one list.").
io(181, expected, [splits, [0, 2, 2, 5]], [[]+[0, 2, 2, 5], [0]+[2, 2, 5], [0, 2]+[2, 5], [0, 2, 2]+[5], [0, 2, 2, 5]+[]]).
io(182, grade_model, [pairs], pass).
io(183, grade_mistake, [selects, sorted], wrong([3, 1], [3/[1], 1/[3]], [1/[3], 3/[1]])).
io(184, task, [pairs], "List every pair X-Y of members, in order, as one list.").
io(185, expected, [pairs, [5, 3, 4]], [5-5, 5-3, 5-4, 3-5, 3-3, 3-4, 4-5, 4-3, 4-4]).
io(186, grade_model, [big_members], pass).
io(187, grade_mistake, [pairs, no_repeats], wrong([1], [1-1], [])).
io(188, task, [big_members], "List the members greater than 2, in order, as one list.").
io(189, expected, [selects, [1]], [1/[]]).
io(190, grade_model, [pairs], pass).
io(191, grade_mistake, [big_members, not_a_list], wrong([], [], fails)).
io(192, task, [splits], "List every way to split the list in two, as A+B pairs, as one list.").
io(193, expected, [big_members, [1]], []).
io(194, grade_model, [big_members], pass).
io(195, grade_mistake, [selects, sorted], wrong([3, 1], [3/[1], 1/[3]], [1/[3], 3/[1]])).
io(196, task, [big_members], "List the members greater than 2, in order, as one list.").
io(197, expected, [big_members, []], []).
io(198, grade_model, [big_members], pass).
io(199, grade_mistake, [selects, sorted], wrong([3, 1], [3/[1], 1/[3]], [1/[3], 3/[1]])).
io(200, task, [splits], "List every way to split the list in two, as A+B pairs, as one list.").
